; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ext_plugin.c_mysqlnd_plugin__get_plugin_result_data.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ext_plugin.c_mysqlnd_plugin__get_plugin_result_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"mysqlnd_plugin__get_plugin_result_data\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"plugin_id=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i32*, i32)* @mysqlnd_plugin__get_plugin_result_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @mysqlnd_plugin__get_plugin_result_data(i32* %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (...) @mysqlnd_plugin_count()
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  store i8** null, i8*** %3, align 8
  br label %25

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = call i32 @DBG_RETURN(i8* %23)
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i8**, i8*** %3, align 8
  ret i8** %26
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i32) #1

declare dso_local i32 @mysqlnd_plugin_count(...) #1

declare dso_local i32 @DBG_RETURN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
