; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"rp:f:a:b:d:c:CilLMNXxF:h\00", align 1
@opts = common dso_local global i32 0, align 4
@opt_raw = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@opt_list_cgroup = common dso_local global i32 0, align 4
@opt_mark_idle = common dso_local global i32 0, align 4
@opt_list = common dso_local global i32 0, align 4
@opt_list_mapcnt = common dso_local global i32 0, align 4
@opt_no_summary = common dso_local global i32 0, align 4
@opt_hwpoison = common dso_local global i32 0, align 4
@opt_unpoison = common dso_local global i32 0, align 4
@opt_kpageflags = common dso_local global i64 0, align 8
@PROC_KPAGEFLAGS = common dso_local global i64 0, align 8
@opt_cgroup = common dso_local global i64 0, align 8
@PROC_KPAGECGROUP = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@kpagecgroup_fd = common dso_local global i8* null, align 8
@PROC_KPAGECOUNT = common dso_local global i32 0, align 4
@kpagecount_fd = common dso_local global i64 0, align 8
@opt_file = common dso_local global i64 0, align 8
@SYS_KERNEL_MM_PAGE_IDLE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@page_idle_fd = common dso_local global i64 0, align 8
@opt_pid = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"voffset\09\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"foffset\09\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"cgroup\09\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"map-cnt\09\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"offset\09len\09flags\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"offset\09flags\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @getpagesize()
  store i32 %7, i32* @page_size, align 4
  br label %8

8:                                                ; preds = %55, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i32, i32* @opts, align 4
  %12 = call i32 @getopt_long(i32 %9, i8** %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11, i32* null)
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %56

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %52 [
    i32 114, label %16
    i32 112, label %17
    i32 102, label %20
    i32 97, label %23
    i32 98, label %26
    i32 99, label %29
    i32 67, label %32
    i32 100, label %33
    i32 105, label %37
    i32 108, label %38
    i32 76, label %39
    i32 77, label %40
    i32 78, label %41
    i32 88, label %42
    i32 120, label %44
    i32 70, label %46
    i32 104, label %49
  ]

16:                                               ; preds = %14
  store i32 1, i32* @opt_raw, align 4
  br label %55

17:                                               ; preds = %14
  %18 = load i32, i32* @optarg, align 4
  %19 = call i32 @parse_pid(i32 %18)
  br label %55

20:                                               ; preds = %14
  %21 = load i32, i32* @optarg, align 4
  %22 = call i32 @parse_file(i32 %21)
  br label %55

23:                                               ; preds = %14
  %24 = load i32, i32* @optarg, align 4
  %25 = call i32 @parse_addr_range(i32 %24)
  br label %55

26:                                               ; preds = %14
  %27 = load i32, i32* @optarg, align 4
  %28 = call i32 @parse_bits_mask(i32 %27)
  br label %55

29:                                               ; preds = %14
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @parse_cgroup(i32 %30)
  br label %55

32:                                               ; preds = %14
  store i32 1, i32* @opt_list_cgroup, align 4
  br label %55

33:                                               ; preds = %14
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @describe_flags(i32 %34)
  %36 = call i32 @exit(i32 0) #3
  unreachable

37:                                               ; preds = %14
  store i32 1, i32* @opt_mark_idle, align 4
  br label %55

38:                                               ; preds = %14
  store i32 1, i32* @opt_list, align 4
  br label %55

39:                                               ; preds = %14
  store i32 2, i32* @opt_list, align 4
  br label %55

40:                                               ; preds = %14
  store i32 1, i32* @opt_list_mapcnt, align 4
  br label %55

41:                                               ; preds = %14
  store i32 1, i32* @opt_no_summary, align 4
  br label %55

42:                                               ; preds = %14
  store i32 1, i32* @opt_hwpoison, align 4
  %43 = call i32 (...) @prepare_hwpoison_fd()
  br label %55

44:                                               ; preds = %14
  store i32 1, i32* @opt_unpoison, align 4
  %45 = call i32 (...) @prepare_hwpoison_fd()
  br label %55

46:                                               ; preds = %14
  %47 = load i32, i32* @optarg, align 4
  %48 = call i32 @parse_kpageflags(i32 %47)
  br label %55

49:                                               ; preds = %14
  %50 = call i32 (...) @usage()
  %51 = call i32 @exit(i32 0) #3
  unreachable

52:                                               ; preds = %14
  %53 = call i32 (...) @usage()
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %46, %44, %42, %41, %40, %39, %38, %37, %32, %29, %26, %23, %20, %17, %16
  br label %8

56:                                               ; preds = %8
  %57 = load i64, i64* @opt_kpageflags, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* @PROC_KPAGEFLAGS, align 8
  store i64 %60, i64* @opt_kpageflags, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i64, i64* @opt_cgroup, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @opt_list_cgroup, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64, %61
  %68 = load i32, i32* @PROC_KPAGECGROUP, align 4
  %69 = load i32, i32* @O_RDONLY, align 4
  %70 = call i8* @checked_open(i32 %68, i32 %69)
  store i8* %70, i8** @kpagecgroup_fd, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* @opt_list, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* @opt_list_mapcnt, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* @PROC_KPAGECOUNT, align 4
  %79 = load i32, i32* @O_RDONLY, align 4
  %80 = call i8* @checked_open(i32 %78, i32 %79)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* @kpagecount_fd, align 8
  br label %82

82:                                               ; preds = %77, %74, %71
  %83 = load i32, i32* @opt_mark_idle, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i64, i64* @opt_file, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @SYS_KERNEL_MM_PAGE_IDLE, align 4
  %90 = load i32, i32* @O_RDWR, align 4
  %91 = call i8* @checked_open(i32 %89, i32 %90)
  %92 = ptrtoint i8* %91 to i64
  store i64 %92, i64* @page_idle_fd, align 8
  br label %93

93:                                               ; preds = %88, %85, %82
  %94 = load i32, i32* @opt_list, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i64, i64* @opt_pid, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96, %93
  %102 = load i32, i32* @opt_list, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i64, i64* @opt_file, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %104, %101
  %110 = load i32, i32* @opt_list, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* @opt_list_cgroup, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112, %109
  %118 = load i32, i32* @opt_list, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* @opt_list_mapcnt, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %120, %117
  %126 = load i32, i32* @opt_list, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %125
  %131 = load i32, i32* @opt_list, align 4
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i64, i64* @opt_file, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 (...) @walk_page_cache()
  br label %142

140:                                              ; preds = %135
  %141 = call i32 (...) @walk_addr_ranges()
  br label %142

142:                                              ; preds = %140, %138
  %143 = load i32, i32* @opt_list, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 (...) @flush_page_range()
  br label %147

147:                                              ; preds = %145, %142
  %148 = load i32, i32* @opt_no_summary, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %170

151:                                              ; preds = %147
  %152 = load i32, i32* @opt_list, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %151
  %157 = call i32 (...) @show_summary()
  %158 = load i32, i32* @opt_list_mapcnt, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i64, i64* @kpagecount_fd, align 8
  %162 = call i32 @close(i64 %161)
  br label %163

163:                                              ; preds = %160, %156
  %164 = load i64, i64* @page_idle_fd, align 8
  %165 = icmp sge i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i64, i64* @page_idle_fd, align 8
  %168 = call i32 @close(i64 %167)
  br label %169

169:                                              ; preds = %166, %163
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %150
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @parse_pid(i32) #1

declare dso_local i32 @parse_file(i32) #1

declare dso_local i32 @parse_addr_range(i32) #1

declare dso_local i32 @parse_bits_mask(i32) #1

declare dso_local i32 @parse_cgroup(i32) #1

declare dso_local i32 @describe_flags(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @prepare_hwpoison_fd(...) #1

declare dso_local i32 @parse_kpageflags(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @checked_open(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @walk_page_cache(...) #1

declare dso_local i32 @walk_addr_ranges(...) #1

declare dso_local i32 @flush_page_range(...) #1

declare dso_local i32 @show_summary(...) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
