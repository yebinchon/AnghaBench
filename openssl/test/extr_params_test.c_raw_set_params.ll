; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_test.c_raw_set_params.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_test.c_raw_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32* }
%struct.object_st = type { i32, double, i8*, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"p1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"p2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"p3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"p4\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"p5\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"p6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @raw_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_set_params(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.object_st*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.object_st*
  store %struct.object_st* %8, %struct.object_st** %6, align 8
  br label %9

9:                                                ; preds = %139, %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %142

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @strcmp(i32* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.object_st*, %struct.object_st** %6, align 8
  %27 = getelementptr inbounds %struct.object_st, %struct.object_st* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %138

28:                                               ; preds = %14
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @strcmp(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to double*
  %39 = load double, double* %38, align 8
  %40 = load %struct.object_st*, %struct.object_st** %6, align 8
  %41 = getelementptr inbounds %struct.object_st, %struct.object_st* %40, i32 0, i32 1
  store double %39, double* %41, align 8
  br label %137

42:                                               ; preds = %28
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @strcmp(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.object_st*, %struct.object_st** %6, align 8
  %50 = getelementptr inbounds %struct.object_st, %struct.object_st* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @BN_free(i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @BN_native2bn(i64 %55, i32 %58, i32* null)
  %60 = load %struct.object_st*, %struct.object_st** %6, align 8
  %61 = getelementptr inbounds %struct.object_st, %struct.object_st* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = call i32 @TEST_ptr(i32 %59)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %143

65:                                               ; preds = %48
  br label %136

66:                                               ; preds = %42
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @strcmp(i32* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load %struct.object_st*, %struct.object_st** %6, align 8
  %74 = getelementptr inbounds %struct.object_st, %struct.object_st* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @OPENSSL_free(i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @OPENSSL_strndup(i64 %79, i32 %82)
  %84 = load %struct.object_st*, %struct.object_st** %6, align 8
  %85 = getelementptr inbounds %struct.object_st, %struct.object_st* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = call i32 @TEST_ptr(i32 %83)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %143

89:                                               ; preds = %72
  br label %135

90:                                               ; preds = %66
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @strcmp(i32* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load %struct.object_st*, %struct.object_st** %6, align 8
  %98 = getelementptr inbounds %struct.object_st, %struct.object_st* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @strncpy(i32 %99, i64 %102, i32 %105)
  %107 = load %struct.object_st*, %struct.object_st** %6, align 8
  %108 = getelementptr inbounds %struct.object_st, %struct.object_st* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @strlen(i32 %109)
  %111 = add nsw i64 %110, 1
  %112 = load %struct.object_st*, %struct.object_st** %6, align 8
  %113 = getelementptr inbounds %struct.object_st, %struct.object_st* %112, i32 0, i32 5
  store i64 %111, i64* %113, align 8
  br label %134

114:                                              ; preds = %90
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @strcmp(i32* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %114
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i8**
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.object_st*, %struct.object_st** %6, align 8
  %127 = getelementptr inbounds %struct.object_st, %struct.object_st* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.object_st*, %struct.object_st** %6, align 8
  %132 = getelementptr inbounds %struct.object_st, %struct.object_st* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %120, %114
  br label %134

134:                                              ; preds = %133, %96
  br label %135

135:                                              ; preds = %134, %89
  br label %136

136:                                              ; preds = %135, %65
  br label %137

137:                                              ; preds = %136, %34
  br label %138

138:                                              ; preds = %137, %20
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 1
  store %struct.TYPE_3__* %141, %struct.TYPE_3__** %5, align 8
  br label %9

142:                                              ; preds = %9
  store i32 1, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %88, %64
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @BN_free(i32) #1

declare dso_local i32 @TEST_ptr(i32) #1

declare dso_local i32 @BN_native2bn(i64, i32, i32*) #1

declare dso_local i32 @OPENSSL_free(i32) #1

declare dso_local i32 @OPENSSL_strndup(i64, i32) #1

declare dso_local i32 @strncpy(i32, i64, i32) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
