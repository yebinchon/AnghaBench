; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_SetRange.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_SetRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%x %p\0A\00", align 1
@GDTR_MIN = common dso_local global i32 0, align 4
@GDTR_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@st_null = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8**)* @MONTHCAL_SetRange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MONTHCAL_SetRange(%struct.TYPE_3__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i8** %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @GDTR_MIN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8**, i8*** %7, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = call i32 @MONTHCAL_ValidateDate(i8** %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @GDTR_MAX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = call i32 @MONTHCAL_ValidateDate(i8** %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28, %18
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %179

35:                                               ; preds = %28, %23
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load i8*, i8** @st_null, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i8* %38, i8** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @GDTR_MIN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %35
  %48 = load i8**, i8*** %7, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = call i32 @MONTHCAL_ValidateTime(i8** %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i8**, i8*** %7, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = call i32 @MONTHCAL_CopyTime(i32* %54, i8** %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i8**, i8*** %7, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @GDTR_MIN, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %58, %35
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @GDTR_MAX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %69
  %75 = load i8**, i8*** %7, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = call i32 @MONTHCAL_ValidateTime(i8** %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i8**, i8*** %7, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = call i32 @MONTHCAL_CopyTime(i32* %81, i8** %83)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i8**, i8*** %7, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @GDTR_MAX, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %85, %69
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @GDTR_MIN, align 4
  %101 = load i32, i32* @GDTR_MAX, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = load i32, i32* @GDTR_MIN, align 4
  %105 = load i32, i32* @GDTR_MAX, align 4
  %106 = or i32 %104, %105
  %107 = icmp ne i32 %103, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %4, align 4
  br label %179

110:                                              ; preds = %96
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = call i32 @SystemTimeToFileTime(i8** %112, i32* %9)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = call i32 @SystemTimeToFileTime(i8** %115, i32* %8)
  %117 = call i64 @CompareFileTime(i32* %8, i32* %9)
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %177

119:                                              ; preds = %110
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @GDTR_MIN, align 4
  %122 = load i32, i32* @GDTR_MAX, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = load i32, i32* @GDTR_MIN, align 4
  %126 = load i32, i32* @GDTR_MAX, align 4
  %127 = or i32 %125, %126
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %119
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %10, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  br label %176

141:                                              ; preds = %119
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @GDTR_MIN, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i8*, i8** @st_null, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %146, %141
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @GDTR_MAX, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i8*, i8** @st_null, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @GDTR_MIN, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* @GDTR_MAX, align 4
  %166 = xor i32 %165, -1
  br label %170

167:                                              ; preds = %159
  %168 = load i32, i32* @GDTR_MIN, align 4
  %169 = xor i32 %168, -1
  br label %170

170:                                              ; preds = %167, %164
  %171 = phi i32 [ %166, %164 ], [ %169, %167 ]
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %170, %129
  br label %177

177:                                              ; preds = %176, %110
  %178 = load i32, i32* @TRUE, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %108, %33
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @TRACE(i8*, i32, i8**) #1

declare dso_local i32 @MONTHCAL_ValidateDate(i8**) #1

declare dso_local i32 @MONTHCAL_ValidateTime(i8**) #1

declare dso_local i32 @MONTHCAL_CopyTime(i32*, i8**) #1

declare dso_local i32 @SystemTimeToFileTime(i8**, i32*) #1

declare dso_local i64 @CompareFileTime(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
