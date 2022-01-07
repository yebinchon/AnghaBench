; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw2.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"a:H:E:F:L:V:N:W:w:ci:k:r:R:o:xhsjv:y:T:e\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@rootfs_align = common dso_local global i32 0, align 4
@opt_hw_id = common dso_local global i8* null, align 8
@kernel_ep = common dso_local global i32 0, align 4
@layout_id = common dso_local global i8* null, align 8
@opt_hw_rev = common dso_local global i8* null, align 8
@opt_hw_ver_add = common dso_local global i8* null, align 8
@kernel_la = common dso_local global i32 0, align 4
@version = common dso_local global i8* null, align 8
@fw_ver = common dso_local global i8* null, align 8
@sver = common dso_local global i8* null, align 8
@vendor = common dso_local global i8* null, align 8
@combined = common dso_local global i32 0, align 4
@kernel_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@rootfs_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@rootfs_ofs = common dso_local global i32 0, align 4
@ofname = common dso_local global i8* null, align 8
@strip_padding = common dso_local global i32 0, align 4
@inspect_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@add_jffs2_eof = common dso_local global i32 0, align 4
@extract = common dso_local global i32 0, align 4
@hdr_ver = common dso_local global i32 0, align 4
@FLAG_LE_KERNEL_LA_EP = common dso_local global i32 0, align 4
@custom_board = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

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
  br label %13

13:                                               ; preds = %2, %75
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %76

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %72 [
    i32 97, label %22
    i32 72, label %25
    i32 69, label %27
    i32 70, label %30
    i32 87, label %32
    i32 119, label %34
    i32 76, label %36
    i32 86, label %39
    i32 118, label %41
    i32 121, label %43
    i32 78, label %45
    i32 99, label %47
    i32 107, label %50
    i32 114, label %52
    i32 82, label %54
    i32 111, label %57
    i32 115, label %59
    i32 105, label %60
    i32 106, label %62
    i32 120, label %63
    i32 84, label %64
    i32 101, label %67
    i32 104, label %69
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @rootfs_align)
  br label %75

25:                                               ; preds = %20
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** @opt_hw_id, align 8
  br label %75

27:                                               ; preds = %20
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @kernel_ep)
  br label %75

30:                                               ; preds = %20
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** @layout_id, align 8
  br label %75

32:                                               ; preds = %20
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** @opt_hw_rev, align 8
  br label %75

34:                                               ; preds = %20
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** @opt_hw_ver_add, align 8
  br label %75

36:                                               ; preds = %20
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @kernel_la)
  br label %75

39:                                               ; preds = %20
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** @version, align 8
  br label %75

41:                                               ; preds = %20
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** @fw_ver, align 8
  br label %75

43:                                               ; preds = %20
  %44 = load i8*, i8** @optarg, align 8
  store i8* %44, i8** @sver, align 8
  br label %75

45:                                               ; preds = %20
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** @vendor, align 8
  br label %75

47:                                               ; preds = %20
  %48 = load i32, i32* @combined, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @combined, align 4
  br label %75

50:                                               ; preds = %20
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kernel_info, i32 0, i32 0), align 8
  br label %75

52:                                               ; preds = %20
  %53 = load i8*, i8** @optarg, align 8
  store i8* %53, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_info, i32 0, i32 0), align 8
  br label %75

54:                                               ; preds = %20
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @sscanf(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @rootfs_ofs)
  br label %75

57:                                               ; preds = %20
  %58 = load i8*, i8** @optarg, align 8
  store i8* %58, i8** @ofname, align 8
  br label %75

59:                                               ; preds = %20
  store i32 1, i32* @strip_padding, align 4
  br label %75

60:                                               ; preds = %20
  %61 = load i8*, i8** @optarg, align 8
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inspect_info, i32 0, i32 0), align 8
  br label %75

62:                                               ; preds = %20
  store i32 1, i32* @add_jffs2_eof, align 4
  br label %75

63:                                               ; preds = %20
  store i32 1, i32* @extract, align 4
  br label %75

64:                                               ; preds = %20
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i32 @atoi(i8* %65)
  store i32 %66, i32* @hdr_ver, align 4
  br label %75

67:                                               ; preds = %20
  %68 = load i32, i32* @FLAG_LE_KERNEL_LA_EP, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @custom_board, i32 0, i32 0), align 4
  br label %75

69:                                               ; preds = %20
  %70 = load i32, i32* @EXIT_SUCCESS, align 4
  %71 = call i32 @usage(i32 %70)
  br label %75

72:                                               ; preds = %20
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  %74 = call i32 @usage(i32 %73)
  br label %75

75:                                               ; preds = %72, %69, %67, %64, %63, %62, %60, %59, %57, %54, %52, %50, %47, %45, %43, %41, %39, %36, %34, %32, %30, %27, %25, %22
  br label %13

76:                                               ; preds = %19
  %77 = call i32 (...) @check_options()
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %89

81:                                               ; preds = %76
  %82 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inspect_info, i32 0, i32 0), align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call i32 @build_fw(i32 4)
  store i32 %85, i32* %6, align 4
  br label %88

86:                                               ; preds = %81
  %87 = call i32 (...) @inspect_fw()
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %84
  br label %89

89:                                               ; preds = %88, %80
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @check_options(...) #1

declare dso_local i32 @build_fw(i32) #1

declare dso_local i32 @inspect_fw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
