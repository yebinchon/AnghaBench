; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_msglevels.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_msglevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mp_log*, i32*, i32, i32, i8***)*, i32 (i8***)*, i32 (i32*, i8*, i8***)* }
%struct.mp_log = type { i32 }
%struct.bstr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [312 x i8] c"Syntax:\0A\0A   --msglevel=module1=level,module2=level,...\0A\0A'module' is output prefix as shown with -v, or a prefix\0Aof it. level is one of:\0A\0A  fatal error warn info status v debug trace\0A\0AThe level specifies the minimum log level a message\0Amust have to be printed.\0AThe special module name 'all' affects all modules.\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@m_option_type_keyvalue_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i32, i32, i8*)* @parse_msglevels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_msglevels(%struct.mp_log* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.bstr, align 4
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @bstr_equals0(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %22 = call i32 @mp_info(%struct.mp_log* %21, i8* getelementptr inbounds ([312 x i8], [312 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %23, i32* %6, align 4
  br label %51

24:                                               ; preds = %5
  store i8** null, i8*** %12, align 8
  %25 = load i32 (%struct.mp_log*, i32*, i32, i32, i8***)*, i32 (%struct.mp_log*, i32*, i32, i32, i8***)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m_option_type_keyvalue_list, i32 0, i32 0), align 8
  %26 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %25(%struct.mp_log* %26, i32* %27, i32 %29, i32 %31, i8*** %12)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %37 = load i8**, i8*** %12, align 8
  %38 = call i32 @check_msg_levels(%struct.mp_log* %36, i8** %37)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %35, %24
  %40 = load i32, i32* %13, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32 (i32*, i8*, i8***)*, i32 (i32*, i8*, i8***)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m_option_type_keyvalue_list, i32 0, i32 2), align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 %43(i32* %44, i8* %45, i8*** %12)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32 (i8***)*, i32 (i8***)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m_option_type_keyvalue_list, i32 0, i32 1), align 8
  %49 = call i32 %48(i8*** %12)
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %20
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i64 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @mp_info(%struct.mp_log*, i8*) #1

declare dso_local i32 @check_msg_levels(%struct.mp_log*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
