; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkdlinkfw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@SYSUPGRADE = common dso_local global i64 0, align 8
@image_type = common dso_local global i64 0, align 8
@family_member = common dso_local global i64 0, align 8
@firmware_size = common dso_local global i64 0, align 8
@JBOOT_SIZE = common dso_local global i64 0, align 8
@image_offset = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"f:F:i:hk:m:o:O:r:s:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%hx\00", align 1
@image_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FACTORY = common dso_local global i64 0, align 8
@inspect_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@kernel_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@rom_id = common dso_local global i32 0, align 4
@rootfs_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@ofname = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @basename(i8* %11)
  store i32 %12, i32* @progname, align 4
  %13 = load i64, i64* @SYSUPGRADE, align 8
  store i64 %13, i64* @image_type, align 8
  store i64 0, i64* @family_member, align 8
  store i64 0, i64* @firmware_size, align 8
  %14 = load i64, i64* @JBOOT_SIZE, align 8
  store i64 %14, i64* @image_offset, align 8
  br label %15

15:                                               ; preds = %2, %56
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %57

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %53 [
    i32 102, label %24
    i32 70, label %27
    i32 105, label %30
    i32 107, label %32
    i32 109, label %34
    i32 114, label %43
    i32 79, label %45
    i32 111, label %48
    i32 115, label %50
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64* @family_member)
  br label %56

27:                                               ; preds = %22
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @image_info, i32 0, i32 0), align 8
  %29 = load i64, i64* @FACTORY, align 8
  store i64 %29, i64* @image_type, align 8
  br label %56

30:                                               ; preds = %22
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inspect_info, i32 0, i32 0), align 8
  br label %56

32:                                               ; preds = %22
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kernel_info, i32 0, i32 0), align 8
  br label %56

34:                                               ; preds = %22
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = icmp eq i32 %36, 12
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @rom_id, align 4
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @memcpy(i32 %39, i8* %40, i32 12)
  br label %42

42:                                               ; preds = %38, %34
  br label %56

43:                                               ; preds = %22
  %44 = load i8*, i8** @optarg, align 8
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 8
  br label %56

45:                                               ; preds = %22
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* @image_offset)
  br label %56

48:                                               ; preds = %22
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** @ofname, align 8
  br label %56

50:                                               ; preds = %22
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i32 @sscanf(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* @firmware_size)
  br label %56

53:                                               ; preds = %22
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  %55 = call i32 @usage(i32 %54)
  br label %56

56:                                               ; preds = %53, %50, %48, %45, %43, %42, %32, %30, %27, %24
  br label %15

57:                                               ; preds = %21
  %58 = call i32 (...) @check_options()
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %77

62:                                               ; preds = %57
  %63 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inspect_info, i32 0, i32 0), align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* @image_type, align 8
  %67 = load i64, i64* @FACTORY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (...) @wrap_fw()
  store i32 %70, i32* %6, align 4
  br label %73

71:                                               ; preds = %65
  %72 = call i32 (...) @build_fw()
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %76

74:                                               ; preds = %62
  %75 = call i32 (...) @inspect_fw()
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %73
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @check_options(...) #1

declare dso_local i32 @wrap_fw(...) #1

declare dso_local i32 @build_fw(...) #1

declare dso_local i32 @inspect_fw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
