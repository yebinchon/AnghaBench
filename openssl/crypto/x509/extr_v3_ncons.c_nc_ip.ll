; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_nc_ip.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_nc_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@X509_V_ERR_UNSUPPORTED_NAME_SYNTAX = common dso_local global i32 0, align 4
@X509_V_ERR_PERMITTED_VIOLATION = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @nc_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nc_ip(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @X509_V_ERR_UNSUPPORTED_NAME_SYNTAX, align 4
  store i32 %30, i32* %3, align 4
  br label %93

31:                                               ; preds = %26, %2
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @X509_V_ERR_UNSUPPORTED_NAME_SYNTAX, align 4
  store i32 %38, i32* %3, align 4
  br label %93

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %40, 2
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @X509_V_ERR_PERMITTED_VIOLATION, align 4
  store i32 %45, i32* %3, align 4
  br label %93

46:                                               ; preds = %39
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %88, %46
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %63, %69
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %76, %82
  %84 = icmp ne i32 %70, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %57
  %86 = load i32, i32* @X509_V_ERR_PERMITTED_VIOLATION, align 4
  store i32 %86, i32* %3, align 4
  br label %93

87:                                               ; preds = %57
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %53

91:                                               ; preds = %53
  %92 = load i32, i32* @X509_V_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %85, %44, %37, %29
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
