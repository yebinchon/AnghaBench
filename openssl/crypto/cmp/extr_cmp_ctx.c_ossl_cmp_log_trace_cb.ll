; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_ossl_cmp_log_trace_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_ctx.c_ossl_cmp_log_trace_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 (i8*, i8*, i32, i64, i8*)* }

@OSSL_TRACE_CTRL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(no func)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"(no file)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32, i32, i8*)* @ossl_cmp_log_trace_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ossl_cmp_log_trace_cb(i8* %0, i64 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %12, align 8
  store i64 -1, i64* %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @OSSL_TRACE_CTRL_WRITE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %31 = icmp eq %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %25, %22, %5
  store i64 0, i64* %6, align 8
  br label %79

33:                                               ; preds = %29
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (i8*, i8*, i32, i64, i8*)*, i32 (i8*, i8*, i32, i64, i8*)** %35, align 8
  %37 = icmp eq i32 (i8*, i8*, i32, i64, i8*)* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i64 1, i64* %6, align 8
  br label %79

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @ossl_cmp_log_parse_metadata(i8* %40, i64* %14, i8** %15, i8** %16, i32* %17)
  store i8* %41, i8** %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %73

48:                                               ; preds = %39
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (i8*, i8*, i32, i64, i8*)*, i32 (i8*, i8*, i32, i64, i8*)** %50, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i8*, i8** %15, align 8
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i8* [ %55, %54 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %56 ]
  %59 = load i8*, i8** %16, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i8*, i8** %16, align 8
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i8* [ %62, %61 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %63 ]
  %66 = load i32, i32* %17, align 4
  %67 = load i64, i64* %14, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 %51(i8* %58, i8* %65, i32 %66, i64 %67, i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  store i64 0, i64* %8, align 8
  br label %72

72:                                               ; preds = %71, %64
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @OPENSSL_free(i8* %74)
  %76 = load i8*, i8** %16, align 8
  %77 = call i32 @OPENSSL_free(i8* %76)
  %78 = load i64, i64* %8, align 8
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %73, %38, %32
  %80 = load i64, i64* %6, align 8
  ret i64 %80
}

declare dso_local i8* @ossl_cmp_log_parse_metadata(i8*, i64*, i8**, i8**, i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
