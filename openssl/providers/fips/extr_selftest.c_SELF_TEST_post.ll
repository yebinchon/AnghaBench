; ModuleID = '/home/carl/AnghaBench/openssl/providers/fips/extr_selftest.c_SELF_TEST_post.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/fips/extr_selftest.c_SELF_TEST_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*)*, i32, i32, i32*, i32* (i32*, i32)*, i32*, i32, i32* (i32, i8*)*, i32* }

@FIPS_state = common dso_local global i64 0, align 8
@FIPS_STATE_INIT = common dso_local global i64 0, align 8
@FIPS_STATE_ERROR = common dso_local global i64 0, align 8
@FIPS_STATE_SELFTEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@FIPS_STATE_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SELF_TEST_post(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %11 = load i64, i64* @FIPS_state, align 8
  %12 = load i64, i64* @FIPS_STATE_INIT, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %5, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %1
  %18 = load i64, i64* @FIPS_state, align 8
  %19 = load i64, i64* @FIPS_STATE_ERROR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @FIPS_state, align 8
  %23 = load i64, i64* @FIPS_STATE_SELFTEST, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %21, %17, %1
  br label %118

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 8
  %34 = load i32*, i32** %33, align 8
  %35 = call i8* @OPENSSL_hexstr2buf(i32* %34, i64* %6)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %118

39:                                               ; preds = %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 7
  %42 = load i32* (i32, i8*)*, i32* (i32, i8*)** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32* %42(i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %39
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @verify_integrity(i32* %50, i32 %53, i8* %54, i64 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49, %39
  br label %118

62:                                               ; preds = %49
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %110

67:                                               ; preds = %62
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %118

73:                                               ; preds = %67
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = call i8* @OPENSSL_hexstr2buf(i32* %76, i64* %6)
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %118

81:                                               ; preds = %73
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32* (i32*, i32)*, i32* (i32*, i32)** %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @strlen(i32* %90)
  %92 = call i32* %84(i32* %87, i32 %91)
  store i32* %92, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %107, label %95

95:                                               ; preds = %81
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @verify_integrity(i32* %96, i32 %99, i8* %100, i64 %101, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %95, %81
  br label %118

108:                                              ; preds = %95
  store i32 1, i32* %4, align 4
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %62
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %4, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %116, %113
  store i32 1, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %107, %80, %72, %61, %38, %30
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @OPENSSL_free(i8* %119)
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @OPENSSL_free(i8* %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = icmp ne %struct.TYPE_3__* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %118
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32 (i32*)*, i32 (i32*)** %127, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 %128(i32* %129)
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32 (i32*)*, i32 (i32*)** %132, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 %133(i32* %134)
  br label %136

136:                                              ; preds = %125, %118
  %137 = load i32, i32* %3, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i64, i64* @FIPS_STATE_RUNNING, align 8
  br label %143

141:                                              ; preds = %136
  %142 = load i64, i64* @FIPS_STATE_ERROR, align 8
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i64 [ %140, %139 ], [ %142, %141 ]
  store i64 %144, i64* @FIPS_state, align 8
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i8* @OPENSSL_hexstr2buf(i32*, i64*) #1

declare dso_local i32 @verify_integrity(i32*, i32, i8*, i64, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
