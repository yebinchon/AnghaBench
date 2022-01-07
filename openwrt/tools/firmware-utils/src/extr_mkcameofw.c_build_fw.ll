; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcameofw.c_build_fw.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcameofw.c_build_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.img_header = type { i32, i32, i32, i32, i32, i8*, i8*, i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@kernel_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@rootfs_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@combined = common dso_local global i32 0, align 4
@kernel_size = common dso_local global i32 0, align 4
@model = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@region = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @build_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_fw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.img_header*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kernel_info, i32 0, i32 0), align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 48, %9
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rootfs_info, i32 0, i32 0), align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %10, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i8* @malloc(i32 %15)
  store i8* %16, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %0
  %20 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %113

21:                                               ; preds = %0
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @memset(i8* %22, i32 0, i32 %23)
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 48
  store i8* %26, i8** %3, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @read_to_buf(%struct.TYPE_4__* @kernel_info, i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %110

32:                                               ; preds = %21
  %33 = load i32, i32* @combined, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kernel_info, i32 0, i32 0), align 4
  %37 = load i8*, i8** %3, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @read_to_buf(%struct.TYPE_4__* @rootfs_info, i8* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %110

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %32
  %47 = load i8*, i8** %2, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 48
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 48
  %52 = trunc i64 %51 to i32
  %53 = call i32 @get_csum(i8* %48, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i8*, i8** %2, align 8
  %55 = bitcast i8* %54 to %struct.img_header*
  store %struct.img_header* %55, %struct.img_header** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i8* @htonl(i32 %56)
  %58 = load %struct.img_header*, %struct.img_header** %5, align 8
  %59 = getelementptr inbounds %struct.img_header, %struct.img_header* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 48
  %63 = trunc i64 %62 to i32
  %64 = call i8* @htonl(i32 %63)
  %65 = load %struct.img_header*, %struct.img_header** %5, align 8
  %66 = getelementptr inbounds %struct.img_header, %struct.img_header* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @combined, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %46
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kernel_info, i32 0, i32 0), align 4
  %71 = call i8* @htonl(i32 %70)
  %72 = load %struct.img_header*, %struct.img_header** %5, align 8
  %73 = getelementptr inbounds %struct.img_header, %struct.img_header* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  br label %79

74:                                               ; preds = %46
  %75 = load i32, i32* @kernel_size, align 4
  %76 = call i8* @htonl(i32 %75)
  %77 = load %struct.img_header*, %struct.img_header** %5, align 8
  %78 = getelementptr inbounds %struct.img_header, %struct.img_header* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.img_header*, %struct.img_header** %5, align 8
  %81 = getelementptr inbounds %struct.img_header, %struct.img_header* %80, i32 0, i32 0
  store i32 48, i32* %81, align 8
  %82 = load %struct.img_header*, %struct.img_header** %5, align 8
  %83 = getelementptr inbounds %struct.img_header, %struct.img_header* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @model, align 4
  %86 = call i32 @strncpy(i32 %84, i32 %85, i32 4)
  %87 = load %struct.img_header*, %struct.img_header** %5, align 8
  %88 = getelementptr inbounds %struct.img_header, %struct.img_header* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @signature, align 4
  %91 = call i32 @strncpy(i32 %89, i32 %90, i32 4)
  %92 = load %struct.img_header*, %struct.img_header** %5, align 8
  %93 = getelementptr inbounds %struct.img_header, %struct.img_header* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @version, align 4
  %96 = call i32 @strncpy(i32 %94, i32 %95, i32 4)
  %97 = load %struct.img_header*, %struct.img_header** %5, align 8
  %98 = getelementptr inbounds %struct.img_header, %struct.img_header* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @region, align 4
  %101 = call i32 @strncpy(i32 %99, i32 %100, i32 4)
  %102 = load i8*, i8** %2, align 8
  %103 = load i32, i32* %1, align 4
  %104 = call i32 @write_fw(i8* %102, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %79
  br label %110

108:                                              ; preds = %79
  %109 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %108, %107, %44, %31
  %111 = load i8*, i8** %2, align 8
  %112 = call i32 @free(i8* %111)
  br label %113

113:                                              ; preds = %110, %19
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read_to_buf(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @get_csum(i8*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @write_fw(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
