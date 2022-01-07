; ModuleID = '/home/carl/AnghaBench/php-src/ext/session/extr_session.c_php_check_cancel_upload.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/session/extr_session.c_php_check_cancel_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@http_session_vars = common dso_local global i32 0, align 4
@IS_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"cancel_upload\00", align 1
@IS_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @php_check_cancel_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_check_cancel_upload(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load i32, i32* @http_session_vars, align 4
  %7 = call i32 @PS(i32 %6)
  %8 = call i32* @Z_REFVAL(i32 %7)
  %9 = call i32 @Z_ARRVAL_P(i32* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @zend_symtable_find(i32 %9, i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @Z_TYPE_P(i32* %18)
  %20 = load i64, i64* @IS_ARRAY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %35

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @Z_ARRVAL_P(i32* %24)
  %26 = call i32* @zend_hash_str_find(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  store i32* %26, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %35

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @Z_TYPE_P(i32* %30)
  %32 = load i64, i64* @IS_TRUE, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %28, %22, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32* @zend_symtable_find(i32, i32) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32* @Z_REFVAL(i32) #1

declare dso_local i32 @PS(i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @zend_hash_str_find(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
