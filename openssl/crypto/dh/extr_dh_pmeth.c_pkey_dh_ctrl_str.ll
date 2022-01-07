; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_pmeth.c_pkey_dh_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_pmeth.c_pkey_dh_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"dh_paramgen_prime_len\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dh_rfc5114\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dh_param\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@DH_F_PKEY_DH_CTRL_STR = common dso_local global i32 0, align 4
@DH_R_INVALID_PARAMETER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"dh_paramgen_generator\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"dh_paramgen_subprime_len\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"dh_paramgen_type\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"dh_pad\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i8*)* @pkey_dh_ctrl_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_dh_ctrl_str(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @atoi(i8* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @EVP_PKEY_CTX_set_dh_paramgen_prime_len(%struct.TYPE_9__* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %108

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %9, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @atoi(i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %30
  store i32 -2, i32* %4, align 4
  br label %108

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 1, i32* %4, align 4
  br label %108

46:                                               ; preds = %26
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %11, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @OBJ_sn2nid(i8* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @NID_undef, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @DH_F_PKEY_DH_CTRL_STR, align 4
  %61 = load i32, i32* @DH_R_INVALID_PARAMETER_NAME, align 4
  %62 = call i32 @DHerr(i32 %60, i32 %61)
  store i32 -2, i32* %4, align 4
  br label %108

63:                                               ; preds = %50
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 1, i32* %4, align 4
  br label %108

67:                                               ; preds = %46
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @atoi(i8* %72)
  store i32 %73, i32* %13, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @EVP_PKEY_CTX_set_dh_paramgen_generator(%struct.TYPE_9__* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %108

77:                                               ; preds = %67
  %78 = load i8*, i8** %6, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @atoi(i8* %82)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @EVP_PKEY_CTX_set_dh_paramgen_subprime_len(%struct.TYPE_9__* %84, i32 %85)
  store i32 %86, i32* %4, align 4
  br label %108

87:                                               ; preds = %77
  %88 = load i8*, i8** %6, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @atoi(i8* %92)
  store i32 %93, i32* %15, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @EVP_PKEY_CTX_set_dh_paramgen_type(%struct.TYPE_9__* %94, i32 %95)
  store i32 %96, i32* %4, align 4
  br label %108

97:                                               ; preds = %87
  %98 = load i8*, i8** %6, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @atoi(i8* %102)
  store i32 %103, i32* %16, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @EVP_PKEY_CTX_set_dh_pad(%struct.TYPE_9__* %104, i32 %105)
  store i32 %106, i32* %4, align 4
  br label %108

107:                                              ; preds = %97
  store i32 -2, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %101, %91, %81, %71, %63, %59, %42, %41, %20
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_set_dh_paramgen_prime_len(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_dh_paramgen_generator(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_dh_paramgen_subprime_len(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_dh_paramgen_type(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_dh_pad(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
