; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"aABd::DefhilLnN:oPrsStTUvXz1\00", align 1
@opts = common dso_local global i32 0, align 4
@show_alias = common dso_local global i32 0, align 4
@sort_active = common dso_local global i32 0, align 4
@show_bytes = common dso_local global i32 0, align 4
@set_debug = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid debug option '%s'\0A\00", align 1
@show_activity = common dso_local global i32 0, align 4
@show_empty = common dso_local global i32 0, align 4
@show_first_alias = common dso_local global i32 0, align 4
@show_inverted = common dso_local global i32 0, align 4
@show_slab = common dso_local global i32 0, align 4
@sort_loss = common dso_local global i32 0, align 4
@show_numa = common dso_local global i32 0, align 4
@output_lines = common dso_local global i32 0, align 4
@show_ops = common dso_local global i32 0, align 4
@show_report = common dso_local global i32 0, align 4
@sort_partial = common dso_local global i32 0, align 4
@shrink = common dso_local global i32 0, align 4
@sort_size = common dso_local global i32 0, align 4
@show_track = common dso_local global i32 0, align 4
@show_totals = common dso_local global i32 0, align 4
@unreclaim_only = common dso_local global i32 0, align 4
@validate = common dso_local global i32 0, align 4
@extended_totals = common dso_local global i32 0, align 4
@skip_zero = common dso_local global i32 0, align 4
@show_single_ref = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: Invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@pattern = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: Invalid pattern '%s' code %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @getpagesize()
  store i32 %9, i32* @page_size, align 4
  br label %10

10:                                               ; preds = %73, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* @opts, align 4
  %14 = call i32 @getopt_long(i32 %11, i8** %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13, i32* null)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %74

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %67 [
    i32 97, label %18
    i32 65, label %19
    i32 66, label %20
    i32 100, label %21
    i32 68, label %31
    i32 101, label %32
    i32 102, label %33
    i32 104, label %34
    i32 105, label %36
    i32 108, label %37
    i32 76, label %38
    i32 110, label %39
    i32 78, label %40
    i32 111, label %51
    i32 114, label %52
    i32 80, label %53
    i32 115, label %54
    i32 83, label %55
    i32 116, label %56
    i32 84, label %57
    i32 85, label %58
    i32 118, label %59
    i32 88, label %60
    i32 122, label %65
    i32 49, label %66
  ]

18:                                               ; preds = %16
  store i32 1, i32* @show_alias, align 4
  br label %73

19:                                               ; preds = %16
  store i32 1, i32* @sort_active, align 4
  br label %73

20:                                               ; preds = %16
  store i32 1, i32* @show_bytes, align 4
  br label %73

21:                                               ; preds = %16
  store i32 1, i32* @set_debug, align 4
  %22 = load i32, i32* @optarg, align 4
  %23 = call i32 @debug_opt_scan(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @optarg, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %25, %21
  br label %73

31:                                               ; preds = %16
  store i32 1, i32* @show_activity, align 4
  br label %73

32:                                               ; preds = %16
  store i32 1, i32* @show_empty, align 4
  br label %73

33:                                               ; preds = %16
  store i32 1, i32* @show_first_alias, align 4
  br label %73

34:                                               ; preds = %16
  %35 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %149

36:                                               ; preds = %16
  store i32 1, i32* @show_inverted, align 4
  br label %73

37:                                               ; preds = %16
  store i32 1, i32* @show_slab, align 4
  br label %73

38:                                               ; preds = %16
  store i32 1, i32* @sort_loss, align 4
  br label %73

39:                                               ; preds = %16
  store i32 1, i32* @show_numa, align 4
  br label %73

40:                                               ; preds = %16
  %41 = load i32, i32* @optarg, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* @optarg, align 4
  %45 = call i32 @atoi(i32 %44)
  store i32 %45, i32* @output_lines, align 4
  %46 = load i32, i32* @output_lines, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* @output_lines, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49, %40
  br label %73

51:                                               ; preds = %16
  store i32 1, i32* @show_ops, align 4
  br label %73

52:                                               ; preds = %16
  store i32 1, i32* @show_report, align 4
  br label %73

53:                                               ; preds = %16
  store i32 1, i32* @sort_partial, align 4
  br label %73

54:                                               ; preds = %16
  store i32 1, i32* @shrink, align 4
  br label %73

55:                                               ; preds = %16
  store i32 1, i32* @sort_size, align 4
  br label %73

56:                                               ; preds = %16
  store i32 1, i32* @show_track, align 4
  br label %73

57:                                               ; preds = %16
  store i32 1, i32* @show_totals, align 4
  br label %73

58:                                               ; preds = %16
  store i32 1, i32* @unreclaim_only, align 4
  br label %73

59:                                               ; preds = %16
  store i32 1, i32* @validate, align 4
  br label %73

60:                                               ; preds = %16
  %61 = load i32, i32* @output_lines, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* @output_lines, align 4
  br label %64

64:                                               ; preds = %63, %60
  store i32 1, i32* @extended_totals, align 4
  store i32 1, i32* @show_bytes, align 4
  br label %73

65:                                               ; preds = %16
  store i32 0, i32* @skip_zero, align 4
  br label %73

66:                                               ; preds = %16
  store i32 1, i32* @show_single_ref, align 4
  br label %73

67:                                               ; preds = %16
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @optopt, align 4
  %72 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %66, %65, %64, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %39, %38, %37, %36, %33, %32, %31, %30, %20, %19, %18
  br label %10

74:                                               ; preds = %10
  %75 = load i32, i32* @show_slab, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @show_alias, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @show_track, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* @show_report, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @validate, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @shrink, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @set_debug, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @show_ops, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  store i32 1, i32* @show_slab, align 4
  br label %99

99:                                               ; preds = %98, %95, %92, %89, %86, %83, %80, %77, %74
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @optind, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* @optind, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %8, align 8
  br label %110

109:                                              ; preds = %99
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %110

110:                                              ; preds = %109, %103
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* @REG_ICASE, align 4
  %113 = load i32, i32* @REG_NOSUB, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @regcomp(i32* @pattern, i8* %111, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %121, i8* %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %110
  %126 = call i32 (...) @read_slab_dir()
  %127 = load i32, i32* @show_alias, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 (...) @alias()
  br label %148

131:                                              ; preds = %125
  %132 = load i32, i32* @extended_totals, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 (...) @xtotals()
  br label %147

136:                                              ; preds = %131
  %137 = load i32, i32* @show_totals, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 (...) @totals()
  br label %146

141:                                              ; preds = %136
  %142 = call i32 (...) @link_slabs()
  %143 = call i32 (...) @rename_slabs()
  %144 = call i32 (...) @sort_slabs()
  %145 = call i32 (...) @output_slabs()
  br label %146

146:                                              ; preds = %141, %139
  br label %147

147:                                              ; preds = %146, %134
  br label %148

148:                                              ; preds = %147, %129
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %34
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @debug_opt_scan(i32) #1

declare dso_local i32 @fatal(i8*, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @read_slab_dir(...) #1

declare dso_local i32 @alias(...) #1

declare dso_local i32 @xtotals(...) #1

declare dso_local i32 @totals(...) #1

declare dso_local i32 @link_slabs(...) #1

declare dso_local i32 @rename_slabs(...) #1

declare dso_local i32 @sort_slabs(...) #1

declare dso_local i32 @output_slabs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
