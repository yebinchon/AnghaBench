; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"a:H:E:F:L:m:V:N:W:C:ci:k:r:R:o:OxX:ehsjv:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@rootfs_align = common dso_local global i32 0, align 4
@opt_hw_id = common dso_local global i8* null, align 8
@kernel_ep = common dso_local global i32 0, align 4
@layout_id = common dso_local global i8* null, align 8
@opt_hw_rev = common dso_local global i8* null, align 8
@country = common dso_local global i8* null, align 8
@kernel_la = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@opt_hdr_ver = common dso_local global i32 0, align 4
@version = common dso_local global i8* null, align 8
@fw_ver = common dso_local global i8* null, align 8
@vendor = common dso_local global i8* null, align 8
@combined = common dso_local global i32 0, align 4
@kernel_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@rootfs_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rootfs_ofs = common dso_local global i32 0, align 4
@ofname = common dso_local global i8* null, align 8
@rootfs_ofs_calc = common dso_local global i32 0, align 4
@strip_padding = common dso_local global i32 0, align 4
@inspect_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@add_jffs2_eof = common dso_local global i32 0, align 4
@extract = common dso_local global i32 0, align 4
@endian_swap = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@reserved_space = common dso_local global i32 0, align 4

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

13:                                               ; preds = %2, %76
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %77

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %73 [
    i32 97, label %22
    i32 72, label %25
    i32 69, label %27
    i32 70, label %30
    i32 87, label %32
    i32 67, label %34
    i32 76, label %36
    i32 109, label %39
    i32 86, label %42
    i32 118, label %44
    i32 78, label %46
    i32 99, label %48
    i32 107, label %51
    i32 114, label %53
    i32 82, label %55
    i32 111, label %58
    i32 79, label %60
    i32 115, label %61
    i32 105, label %62
    i32 106, label %64
    i32 120, label %65
    i32 101, label %66
    i32 104, label %67
    i32 88, label %70
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @sscanf(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @rootfs_align)
  br label %76

25:                                               ; preds = %20
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** @opt_hw_id, align 8
  br label %76

27:                                               ; preds = %20
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @sscanf(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @kernel_ep)
  br label %76

30:                                               ; preds = %20
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** @layout_id, align 8
  br label %76

32:                                               ; preds = %20
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** @opt_hw_rev, align 8
  br label %76

34:                                               ; preds = %20
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** @country, align 8
  br label %76

36:                                               ; preds = %20
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @kernel_la)
  br label %76

39:                                               ; preds = %20
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @sscanf(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* @opt_hdr_ver)
  br label %76

42:                                               ; preds = %20
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** @version, align 8
  br label %76

44:                                               ; preds = %20
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @fw_ver, align 8
  br label %76

46:                                               ; preds = %20
  %47 = load i8*, i8** @optarg, align 8
  store i8* %47, i8** @vendor, align 8
  br label %76

48:                                               ; preds = %20
  %49 = load i32, i32* @combined, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @combined, align 4
  br label %76

51:                                               ; preds = %20
  %52 = load i8*, i8** @optarg, align 8
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_info, i32 0, i32 0), align 8
  br label %76

53:                                               ; preds = %20
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rootfs_info, i32 0, i32 0), align 8
  br label %76

55:                                               ; preds = %20
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 @sscanf(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @rootfs_ofs)
  br label %76

58:                                               ; preds = %20
  %59 = load i8*, i8** @optarg, align 8
  store i8* %59, i8** @ofname, align 8
  br label %76

60:                                               ; preds = %20
  store i32 1, i32* @rootfs_ofs_calc, align 4
  br label %76

61:                                               ; preds = %20
  store i32 1, i32* @strip_padding, align 4
  br label %76

62:                                               ; preds = %20
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inspect_info, i32 0, i32 0), align 8
  br label %76

64:                                               ; preds = %20
  store i32 1, i32* @add_jffs2_eof, align 4
  br label %76

65:                                               ; preds = %20
  store i32 1, i32* @extract, align 4
  br label %76

66:                                               ; preds = %20
  store i32 1, i32* @endian_swap, align 4
  br label %76

67:                                               ; preds = %20
  %68 = load i32, i32* @EXIT_SUCCESS, align 4
  %69 = call i32 @usage(i32 %68)
  br label %76

70:                                               ; preds = %20
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i32 @sscanf(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @reserved_space)
  br label %76

73:                                               ; preds = %20
  %74 = load i32, i32* @EXIT_FAILURE, align 4
  %75 = call i32 @usage(i32 %74)
  br label %76

76:                                               ; preds = %73, %70, %67, %66, %65, %64, %62, %61, %60, %58, %55, %53, %51, %48, %46, %44, %42, %39, %36, %34, %32, %30, %27, %25, %22
  br label %13

77:                                               ; preds = %19
  %78 = call i32 (...) @check_options()
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %90

82:                                               ; preds = %77
  %83 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inspect_info, i32 0, i32 0), align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = call i32 @build_fw(i32 4)
  store i32 %86, i32* %6, align 4
  br label %89

87:                                               ; preds = %82
  %88 = call i32 (...) @inspect_fw()
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %85
  br label %90

90:                                               ; preds = %89, %81
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

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
