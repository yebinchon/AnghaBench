; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_params_test.c_raw_get_params.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_params_test.c_raw_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32*, i32 }
%struct.object_st = type { i32, double, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"p1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"p2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"p3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"p4\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"p5\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"p6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @raw_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_get_params(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.object_st*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.object_st*
  store %struct.object_st* %12, %struct.object_st** %6, align 8
  br label %13

13:                                               ; preds = %175, %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %178

18:                                               ; preds = %13
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @strcmp(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load %struct.object_st*, %struct.object_st** %6, align 8
  %28 = getelementptr inbounds %struct.object_st, %struct.object_st* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32 %29, i32* %33, align 4
  br label %174

34:                                               ; preds = %18
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @strcmp(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 8, i32* %42, align 8
  %43 = load %struct.object_st*, %struct.object_st** %6, align 8
  %44 = getelementptr inbounds %struct.object_st, %struct.object_st* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to double*
  store double %45, double* %49, align 8
  br label %173

50:                                               ; preds = %34
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @strcmp(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load %struct.object_st*, %struct.object_st** %6, align 8
  %58 = getelementptr inbounds %struct.object_st, %struct.object_st* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @BN_num_bytes(i32 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @TEST_size_t_ge(i32 %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %179

72:                                               ; preds = %56
  %73 = load %struct.object_st*, %struct.object_st** %6, align 8
  %74 = getelementptr inbounds %struct.object_st, %struct.object_st* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @BN_bn2nativepad(i32 %75, i64 %78, i64 %79)
  br label %172

81:                                               ; preds = %50
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @strcmp(i32* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %81
  %88 = load %struct.object_st*, %struct.object_st** %6, align 8
  %89 = getelementptr inbounds %struct.object_st, %struct.object_st* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @TEST_size_t_ge(i32 %100, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %179

105:                                              ; preds = %87
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.object_st*, %struct.object_st** %6, align 8
  %110 = getelementptr inbounds %struct.object_st, %struct.object_st* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strcpy(i64 %108, i8* %111)
  br label %171

113:                                              ; preds = %81
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @strcmp(i32* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %113
  %120 = load %struct.object_st*, %struct.object_st** %6, align 8
  %121 = getelementptr inbounds %struct.object_st, %struct.object_st* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %9, align 8
  %126 = load i64, i64* %9, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @TEST_size_t_ge(i32 %132, i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %179

137:                                              ; preds = %119
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.object_st*, %struct.object_st** %6, align 8
  %142 = getelementptr inbounds %struct.object_st, %struct.object_st* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @strcpy(i64 %140, i8* %143)
  br label %170

145:                                              ; preds = %113
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = call i64 @strcmp(i32* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %145
  %152 = load %struct.object_st*, %struct.object_st** %6, align 8
  %153 = getelementptr inbounds %struct.object_st, %struct.object_st* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @strlen(i8* %154)
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %10, align 8
  %158 = load i64, i64* %10, align 8
  %159 = trunc i64 %158 to i32
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.object_st*, %struct.object_st** %6, align 8
  %163 = getelementptr inbounds %struct.object_st, %struct.object_st* %162, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i8**
  store i8* %164, i8** %168, align 8
  br label %169

169:                                              ; preds = %151, %145
  br label %170

170:                                              ; preds = %169, %137
  br label %171

171:                                              ; preds = %170, %105
  br label %172

172:                                              ; preds = %171, %72
  br label %173

173:                                              ; preds = %172, %40
  br label %174

174:                                              ; preds = %173, %24
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 1
  store %struct.TYPE_3__* %177, %struct.TYPE_3__** %5, align 8
  br label %13

178:                                              ; preds = %13
  store i32 1, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %136, %104, %71
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i64 @BN_num_bytes(i32) #1

declare dso_local i32 @TEST_size_t_ge(i32, i64) #1

declare dso_local i32 @BN_bn2nativepad(i32, i64, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
