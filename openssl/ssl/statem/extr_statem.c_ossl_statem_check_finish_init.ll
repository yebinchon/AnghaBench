; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem.c_ossl_statem_check_finish_init.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem.c_ossl_statem_check_finish_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@TLS_ST_PENDING_EARLY_DATA_END = common dso_local global i64 0, align 8
@TLS_ST_EARLY_DATA = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_WRITE_RETRY = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_FINISHED_WRITING = common dso_local global i8* null, align 8
@SSL_EARLY_DATA_WRITING = common dso_local global i64 0, align 8
@SSL_EARLY_DATA_FINISHED_READING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ossl_statem_check_finish_init(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TLS_ST_PENDING_EARLY_DATA_END, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TLS_ST_EARLY_DATA, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14, %7
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = call i32 @ossl_statem_set_in_init(%struct.TYPE_6__* %22, i32 1)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SSL_EARLY_DATA_WRITE_RETRY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i8*, i8** @SSL_EARLY_DATA_FINISHED_WRITING, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %21
  br label %35

35:                                               ; preds = %34, %14
  br label %110

36:                                               ; preds = %2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %92, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TLS_ST_PENDING_EARLY_DATA_END, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TLS_ST_EARLY_DATA, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51, %44
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SSL_EARLY_DATA_WRITING, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %58, %51, %41
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %91, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TLS_ST_EARLY_DATA, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %67, %58
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = call i32 @ossl_statem_set_in_init(%struct.TYPE_6__* %75, i32 1)
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SSL_EARLY_DATA_WRITE_RETRY, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i8*, i8** @SSL_EARLY_DATA_FINISHED_WRITING, align 8
  %87 = ptrtoint i8* %86 to i64
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %79, %74
  br label %91

91:                                               ; preds = %90, %67, %64
  br label %109

92:                                               ; preds = %36
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SSL_EARLY_DATA_FINISHED_READING, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TLS_ST_EARLY_DATA, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = call i32 @ossl_statem_set_in_init(%struct.TYPE_6__* %106, i32 1)
  br label %108

108:                                              ; preds = %105, %98, %92
  br label %109

109:                                              ; preds = %108, %91
  br label %110

110:                                              ; preds = %109, %35
  ret void
}

declare dso_local i32 @ossl_statem_set_in_init(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
