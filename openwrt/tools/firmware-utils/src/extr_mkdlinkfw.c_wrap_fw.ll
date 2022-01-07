; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw.c_wrap_fw.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw.c_wrap_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.auh_header = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@image_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@firmware_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@AUH_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"data is bigger than firmware_size!\0A\00", align 1
@family_member = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"No family_member!\0A\00", align 1
@rom_id = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"No rom_id!\0A\00", align 1
@ofname = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wrap_fw() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.auh_header*, align 8
  %6 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @image_info, i32 0, i32 1), align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %83

10:                                               ; preds = %0
  %11 = call i32 @get_file_stat(%struct.TYPE_4__* @image_info)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %83

15:                                               ; preds = %10
  %16 = load i64, i64* @firmware_size, align 8
  %17 = call i8* @malloc(i64 %16)
  store i8* %17, i8** %1, align 8
  %18 = load i8*, i8** %1, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %83

22:                                               ; preds = %15
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @image_info, i32 0, i32 0), align 8
  %24 = load i64, i64* @AUH_SIZE, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* @firmware_size, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %83

30:                                               ; preds = %22
  %31 = load i32, i32* @family_member, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %83

35:                                               ; preds = %30
  %36 = load i32*, i32** @rom_id, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = call i32 @ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %83

42:                                               ; preds = %35
  %43 = load i8*, i8** %1, align 8
  %44 = load i64, i64* @firmware_size, align 8
  %45 = call i32 @memset(i8* %43, i32 255, i64 %44)
  %46 = load i8*, i8** %1, align 8
  %47 = load i64, i64* @AUH_SIZE, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %2, align 8
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @read_to_buf(%struct.TYPE_4__* @image_info, i8* %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %80

54:                                               ; preds = %42
  %55 = load i8*, i8** %2, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @image_info, i32 0, i32 0), align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8*, i8** %1, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i8*, i8** %1, align 8
  %64 = bitcast i8* %63 to %struct.auh_header*
  store %struct.auh_header* %64, %struct.auh_header** %5, align 8
  %65 = load %struct.auh_header*, %struct.auh_header** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @AUH_SIZE, align 8
  %69 = sub nsw i64 %67, %68
  %70 = call i32 @fill_auh(%struct.auh_header* %65, i64 %69)
  %71 = load i32, i32* @ofname, align 4
  %72 = load i8*, i8** %1, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @write_fw(i32 %71, i8* %72, i32 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %54
  br label %80

78:                                               ; preds = %54
  %79 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %77, %53
  %81 = load i8*, i8** %1, align 8
  %82 = call i32 @free(i8* %81)
  br label %83

83:                                               ; preds = %80, %40, %33, %28, %20, %14, %9
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @get_file_stat(%struct.TYPE_4__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @read_to_buf(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @fill_auh(%struct.auh_header*, i64) #1

declare dso_local i32 @write_fw(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
