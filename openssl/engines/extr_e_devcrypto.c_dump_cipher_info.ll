; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_dump_cipher_info.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_devcrypto.c_dump_cipher_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i8*, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Information about ciphers supported by the /dev/crypto engine:\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"CIOCGSESSINFO (session info call) unavailable\0A\00", align 1
@cipher_data = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Cipher %s, NID=%d, /dev/crypto info: id=%d, \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@cipher_driver_info = common dso_local global %struct.TYPE_4__* null, align 8
@DEVCRYPTO_STATUS_NO_CIOCGSESSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"CIOCGSESSION (session open call) failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"driver=%s \00", align 1
@DEVCRYPTO_ACCELERATED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [17 x i8] c"(hw accelerated)\00", align 1
@DEVCRYPTO_NOT_ACCELERATED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"(software)\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"(acceleration status unknown)\00", align 1
@DEVCRYPTO_STATUS_FAILURE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c". Cipher setup failed\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_cipher_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_cipher_info() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %7

7:                                                ; preds = %105, %0
  %8 = load i64, i64* %1, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cipher_data, align 8
  %10 = call i64 @OSSL_NELEM(%struct.TYPE_5__* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %108

12:                                               ; preds = %7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cipher_data, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @OBJ_nid2sn(i32 %17)
  store i8* %18, i8** %2, align 8
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i8*, i8** %2, align 8
  br label %25

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i8* [ %23, %22 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %24 ]
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cipher_data, align 8
  %28 = load i64, i64* %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cipher_data, align 8
  %33 = load i64, i64* %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %26, i32 %31, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cipher_driver_info, align 8
  %39 = load i64, i64* %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DEVCRYPTO_STATUS_NO_CIOCGSESSION, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %25
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %105

48:                                               ; preds = %25
  %49 = load i32, i32* @stderr, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cipher_driver_info, align 8
  %51 = load i64, i64* %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cipher_driver_info, align 8
  %58 = load i64, i64* %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  br label %63

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i8* [ %61, %56 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %62 ]
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cipher_driver_info, align 8
  %67 = load i64, i64* %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DEVCRYPTO_ACCELERATED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %91

76:                                               ; preds = %63
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cipher_driver_info, align 8
  %78 = load i64, i64* %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DEVCRYPTO_NOT_ACCELERATED, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %90

87:                                               ; preds = %76
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cipher_driver_info, align 8
  %93 = load i64, i64* %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DEVCRYPTO_STATUS_FAILURE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %91
  %103 = load i32, i32* @stderr, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %45
  %106 = load i64, i64* %1, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %1, align 8
  br label %7

108:                                              ; preds = %7
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_5__*) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
