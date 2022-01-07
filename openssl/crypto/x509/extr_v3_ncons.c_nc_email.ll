; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_nc_email.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_nc_email.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@X509_V_ERR_UNSUPPORTED_NAME_SYNTAX = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@X509_V_ERR_PERMITTED_VIOLATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @nc_email to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nc_email(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 64)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 64)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @X509_V_ERR_UNSUPPORTED_NAME_SYNTAX, align 4
  store i32 %25, i32* %3, align 4
  br label %110

26:                                               ; preds = %2
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %61, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @ia5casecmp(i8* %52, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @X509_V_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %110

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i32, i32* @X509_V_ERR_PERMITTED_VIOLATION, align 4
  store i32 %60, i32* %3, align 4
  br label %110

61:                                               ; preds = %29, %26
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %99

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = icmp ne i64 %73, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @X509_V_ERR_PERMITTED_VIOLATION, align 4
  store i32 %81, i32* %3, align 4
  br label %110

82:                                               ; preds = %68
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = call i64 @strncmp(i8* %83, i8* %84, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* @X509_V_ERR_PERMITTED_VIOLATION, align 4
  store i32 %94, i32* %3, align 4
  br label %110

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %64
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8* %98, i8** %6, align 8
  br label %99

99:                                               ; preds = %96, %61
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8* %101, i8** %7, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = call i64 @ia5casecmp(i8* %102, i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @X509_V_ERR_PERMITTED_VIOLATION, align 4
  store i32 %107, i32* %3, align 4
  br label %110

108:                                              ; preds = %99
  %109 = load i32, i32* @X509_V_OK, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %106, %93, %80, %59, %56, %24
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @ia5casecmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
