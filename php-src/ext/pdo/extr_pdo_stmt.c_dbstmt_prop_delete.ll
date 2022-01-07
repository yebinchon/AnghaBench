; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_dbstmt_prop_delete.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_stmt.c_dbstmt_prop_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"queryString\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HY000\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"property queryString is read only\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8**)* @dbstmt_prop_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbstmt_prop_delete(i32* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_4__* @php_pdo_stmt_fetch_object(i32* %8)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @ZSTR_VAL(i32* %10)
  %12 = call i64 @strcmp(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = call i32 @pdo_raise_impl_error(i32 %17, %struct.TYPE_4__* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %25

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i8**, i8*** %6, align 8
  %24 = call i32 @zend_std_unset_property(i32* %21, i32* %22, i8** %23)
  br label %25

25:                                               ; preds = %20, %14
  ret void
}

declare dso_local %struct.TYPE_4__* @php_pdo_stmt_fetch_object(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @pdo_raise_impl_error(i32, %struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @zend_std_unset_property(i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
