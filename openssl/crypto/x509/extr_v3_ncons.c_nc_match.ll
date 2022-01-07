; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_nc_match.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_ncons.c_nc_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@X509_V_ERR_SUBTREE_MINMAX = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i32 0, align 4
@X509_V_ERR_PERMITTED_VIOLATION = common dso_local global i32 0, align 4
@X509_V_ERR_EXCLUDED_VIOLATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_10__*)* @nc_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nc_match(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %65, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sk_GENERAL_SUBTREE_num(i32 %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %10
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.TYPE_11__* @sk_GENERAL_SUBTREE_value(i32 %20, i32 %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %65

33:                                               ; preds = %17
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = call i32 @nc_minmax_valid(%struct.TYPE_11__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @X509_V_ERR_SUBTREE_MINMAX, align 4
  store i32 %38, i32* %3, align 4
  br label %127

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %65

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = call i32 @nc_match_single(%struct.TYPE_12__* %48, %struct.TYPE_13__* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @X509_V_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 2, i32* %9, align 4
  br label %64

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @X509_V_ERR_PERMITTED_VIOLATION, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %127

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %42, %32
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %10

68:                                               ; preds = %10
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @X509_V_ERR_PERMITTED_VIOLATION, align 4
  store i32 %72, i32* %3, align 4
  br label %127

73:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %122, %73
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sk_GENERAL_SUBTREE_num(i32 %78)
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %125

81:                                               ; preds = %74
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call %struct.TYPE_11__* @sk_GENERAL_SUBTREE_value(i32 %84, i32 %85)
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %6, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %89, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %122

97:                                               ; preds = %81
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = call i32 @nc_minmax_valid(%struct.TYPE_11__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @X509_V_ERR_SUBTREE_MINMAX, align 4
  store i32 %102, i32* %3, align 4
  br label %127

103:                                              ; preds = %97
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = call i32 @nc_match_single(%struct.TYPE_12__* %104, %struct.TYPE_13__* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @X509_V_OK, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* @X509_V_ERR_EXCLUDED_VIOLATION, align 4
  store i32 %113, i32* %3, align 4
  br label %127

114:                                              ; preds = %103
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @X509_V_ERR_PERMITTED_VIOLATION, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %127

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %96
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %74

125:                                              ; preds = %74
  %126 = load i32, i32* @X509_V_OK, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %118, %112, %101, %71, %61, %37
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @sk_GENERAL_SUBTREE_num(i32) #1

declare dso_local %struct.TYPE_11__* @sk_GENERAL_SUBTREE_value(i32, i32) #1

declare dso_local i32 @nc_minmax_valid(%struct.TYPE_11__*) #1

declare dso_local i32 @nc_match_single(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
