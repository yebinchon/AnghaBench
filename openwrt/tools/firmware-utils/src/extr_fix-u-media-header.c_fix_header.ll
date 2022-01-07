; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_fix-u-media-header.c_fix_header.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_fix-u-media-header.c_fix_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.u_media_header = type { i8*, i32, i8*, i32, i8*, i8*, i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@if_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid input file\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@IH_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid input file, bad magic\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid input file, bad header CRC\0A\00", align 1
@IH_NMLEN = common dso_local global i32 0, align 4
@UM_HEADER_LEN = common dso_local global i32 0, align 4
@UM_MAGIC = common dso_local global i64 0, align 8
@board_id = common dso_local global i64 0, align 8
@image_type = common dso_local global i32 0, align 4
@factory_defaults = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"U-Media header fixed in \22%s\22\00", align 1
@ofname = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fix_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_header() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.u_media_header*, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @if_info, i32 0, i32 0), align 4
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 56
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %1, align 4
  br label %104

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = call i8* @malloc(i32 %17)
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %102

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @read_to_buf(%struct.TYPE_3__* @if_info, i8* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %99

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = bitcast i8* %30 to %struct.u_media_header*
  store %struct.u_media_header* %31, %struct.u_media_header** %6, align 8
  %32 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %33 = getelementptr inbounds %struct.u_media_header, %struct.u_media_header* %32, i32 0, i32 6
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @ntohl(i8* %34)
  %36 = load i64, i64* @IH_MAGIC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %99

40:                                               ; preds = %29
  %41 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %42 = getelementptr inbounds %struct.u_media_header, %struct.u_media_header* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @ntohl(i8* %43)
  store i64 %44, i64* %5, align 8
  %45 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %46 = getelementptr inbounds %struct.u_media_header, %struct.u_media_header* %45, i32 0, i32 2
  store i8* null, i8** %46, align 8
  %47 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %48 = bitcast %struct.u_media_header* %47 to i8*
  %49 = call i64 @cyg_ether_crc32(i8* %48, i32 56)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %99

55:                                               ; preds = %40
  %56 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %57 = getelementptr inbounds %struct.u_media_header, %struct.u_media_header* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @IH_NMLEN, align 4
  %60 = load i32, i32* @UM_HEADER_LEN, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i64, i64* @UM_MAGIC, align 8
  %66 = call i8* @htonl(i64 %65)
  %67 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %68 = getelementptr inbounds %struct.u_media_header, %struct.u_media_header* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* @board_id, align 8
  %70 = call i8* @htonl(i64 %69)
  %71 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %72 = getelementptr inbounds %struct.u_media_header, %struct.u_media_header* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @image_type, align 4
  %74 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %75 = getelementptr inbounds %struct.u_media_header, %struct.u_media_header* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* @factory_defaults, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %81 = getelementptr inbounds %struct.u_media_header, %struct.u_media_header* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %83 = bitcast %struct.u_media_header* %82 to i8*
  %84 = call i64 @cyg_ether_crc32(i8* %83, i32 56)
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = call i8* @htonl(i64 %85)
  %87 = load %struct.u_media_header*, %struct.u_media_header** %6, align 8
  %88 = getelementptr inbounds %struct.u_media_header, %struct.u_media_header* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %3, align 8
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @write_fw(i8* %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %55
  br label %99

95:                                               ; preds = %55
  %96 = load i32, i32* @ofname, align 4
  %97 = call i32 @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %95, %94, %53, %38, %28
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @free(i8* %100)
  br label %102

102:                                              ; preds = %99, %21
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %1, align 4
  br label %104

104:                                              ; preds = %102, %13
  %105 = load i32, i32* %1, align 4
  ret i32 %105
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @read_to_buf(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @ntohl(i8*) #1

declare dso_local i64 @cyg_ether_crc32(i8*, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @write_fw(i8*, i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
