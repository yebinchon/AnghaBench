; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_ssl3_record.c_early_data_count_ok.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_ssl3_record.c_early_data_count_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_7__, i32, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_EARLY_DATA_COUNT_OK = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_ACCEPTED = common dso_local global i64 0, align 8
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_TOO_MUCH_EARLY_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @early_data_count_ok(%struct.TYPE_10__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %11, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %30, %25
  %39 = phi i1 [ false, %25 ], [ %37, %30 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @ossl_assert(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %46 = load i32, i32* @SSL_F_EARLY_DATA_COUNT_OK, align 4
  %47 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %48 = call i32 @SSLfatal(%struct.TYPE_10__* %44, i32 %45, i32 %46, i32 %47)
  store i32 0, i32* %5, align 4
  br label %141

49:                                               ; preds = %38
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %11, align 8
  br label %53

53:                                               ; preds = %49, %19, %4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %10, align 8
  br label %95

63:                                               ; preds = %53
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SSL_EARLY_DATA_ACCEPTED, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %10, align 8
  br label %94

74:                                               ; preds = %63
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  br label %92

87:                                               ; preds = %74
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  br label %92

92:                                               ; preds = %87, %83
  %93 = phi i64 [ %86, %83 ], [ %91, %87 ]
  store i64 %93, i64* %10, align 8
  br label %94

94:                                               ; preds = %92, %70
  br label %95

95:                                               ; preds = %94, %58
  %96 = load i64, i64* %10, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load i32, i32* @SSL_F_EARLY_DATA_COUNT_OK, align 4
  %109 = load i32, i32* @SSL_R_TOO_MUCH_EARLY_DATA, align 4
  %110 = call i32 @SSLfatal(%struct.TYPE_10__* %99, i32 %107, i32 %108, i32 %109)
  store i32 0, i32* %5, align 4
  br label %141

111:                                              ; preds = %95
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %10, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %117, %118
  %120 = load i64, i64* %10, align 8
  %121 = icmp ugt i64 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %111
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  br label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = load i32, i32* @SSL_F_EARLY_DATA_COUNT_OK, align 4
  %133 = load i32, i32* @SSL_R_TOO_MUCH_EARLY_DATA, align 4
  %134 = call i32 @SSLfatal(%struct.TYPE_10__* %123, i32 %131, i32 %132, i32 %133)
  store i32 0, i32* %5, align 4
  br label %141

135:                                              ; preds = %111
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, %136
  store i64 %140, i64* %138, align 8
  store i32 1, i32* %5, align 4
  br label %141

141:                                              ; preds = %135, %130, %106, %43
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
