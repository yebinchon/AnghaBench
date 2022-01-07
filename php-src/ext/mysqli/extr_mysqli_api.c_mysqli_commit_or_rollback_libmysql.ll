; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_api.c_mysqli_commit_or_rollback_libmysql.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_api.c_mysqli_commit_or_rollback_libmysql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"COMMIT%s %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ROLLBACK%s %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i8*)* @mysqli_commit_or_rollback_libmysql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqli_commit_or_rollback_libmysql(i32* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @mysqli_tx_cor_options_to_string(i32* %15, %struct.TYPE_5__* %10, i32 %16)
  %18 = call i32 @smart_str_0(%struct.TYPE_5__* %10)
  %19 = load i8*, i8** %8, align 8
  %20 = call i8* @mysqli_escape_string_for_tx_name_in_comment(i8* %19)
  store i8* %20, i8** %12, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i8*, i8** %12, align 8
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %29 ]
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @ZSTR_VAL(i64 %37)
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %39 ]
  %42 = call i64 @spprintf(i8** %11, i32 0, i8* %24, i8* %31, i8* %41)
  store i64 %42, i64* %13, align 8
  %43 = call i32 @smart_str_free(%struct.TYPE_5__* %10)
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @efree(i8* %47)
  store i8* null, i8** %12, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @mysql_real_query(i32* %50, i8* %51, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @efree(i8* %54)
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mysqli_tx_cor_options_to_string(i32*, %struct.TYPE_5__*, i32) #2

declare dso_local i32 @smart_str_0(%struct.TYPE_5__*) #2

declare dso_local i8* @mysqli_escape_string_for_tx_name_in_comment(i8*) #2

declare dso_local i64 @spprintf(i8**, i32, i8*, i8*, i8*) #2

declare dso_local i8* @ZSTR_VAL(i64) #2

declare dso_local i32 @smart_str_free(%struct.TYPE_5__*) #2

declare dso_local i32 @efree(i8*) #2

declare dso_local i32 @mysql_real_query(i32*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
