; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeNumberField.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeNumberField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i8*, i8*, i8*, i8*, i8* }

@DTK_DATE_M = common dso_local global i32 0, align 4
@DTK_DATE = common dso_local global i32 0, align 4
@DTK_TIME_M = common dso_local global i32 0, align 4
@DTK_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, %struct.tm*, i32*, i32*)* @DecodeNumberField to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeNumberField(i32 %0, i8* %1, i32 %2, i32* %3, %struct.tm* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.tm*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [7 x i8], align 1
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.tm* %4, %struct.tm** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 46)
  store i8* %20, i8** %16, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %7
  %23 = load i8*, i8** %16, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %16, align 8
  store i32 0, i32* %18, align 4
  br label %25

25:                                               ; preds = %45, %22
  %26 = load i32, i32* %18, align 4
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i8*, i8** %16, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %16, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %16, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  br label %39

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i32 [ %37, %33 ], [ 48, %38 ]
  %41 = trunc i32 %40 to i8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 %43
  store i8 %41, i8* %44, align 1
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %18, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load i32, i32* %18, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 %50
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 0, i64 0
  %53 = call i32 @strtoint(i8* %52, i32* null, i32 10)
  %54 = load i32*, i32** %14, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i8*, i8** %16, align 8
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @strlen(i8* %56)
  store i32 %57, i32* %9, align 4
  br label %145

58:                                               ; preds = %7
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @DTK_DATE_M, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @DTK_DATE_M, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %144

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %67, label %91

67:                                               ; preds = %64
  %68 = load i32, i32* @DTK_DATE_M, align 4
  %69 = load i32*, i32** %12, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 6
  %72 = call i8* @atoi(i8* %71)
  %73 = load %struct.tm*, %struct.tm** %13, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 6
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  %79 = call i8* @atoi(i8* %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.tm*, %struct.tm** %13, align 8
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = call i8* @atoi(i8* %86)
  %88 = load %struct.tm*, %struct.tm** %13, align 8
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @DTK_DATE, align 4
  store i32 %90, i32* %8, align 4
  br label %201

91:                                               ; preds = %64
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 6
  br i1 %93, label %94, label %119

94:                                               ; preds = %91
  %95 = load i32, i32* @DTK_DATE_M, align 4
  %96 = load i32*, i32** %12, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 4
  %99 = call i8* @atoi(i8* %98)
  %100 = load %struct.tm*, %struct.tm** %13, align 8
  %101 = getelementptr inbounds %struct.tm, %struct.tm* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  store i8 0, i8* %103, align 1
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = call i8* @atoi(i8* %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.tm*, %struct.tm** %13, align 8
  %109 = getelementptr inbounds %struct.tm, %struct.tm* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = call i8* @atoi(i8* %113)
  %115 = load %struct.tm*, %struct.tm** %13, align 8
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load i32*, i32** %15, align 8
  store i32 1, i32* %117, align 4
  %118 = load i32, i32* @DTK_DATE, align 4
  store i32 %118, i32* %8, align 4
  br label %201

119:                                              ; preds = %91
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %141

122:                                              ; preds = %119
  %123 = load i32, i32* @DTK_DATE_M, align 4
  %124 = load i32*, i32** %12, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  %127 = call i8* @atoi(i8* %126)
  %128 = load %struct.tm*, %struct.tm** %13, align 8
  %129 = getelementptr inbounds %struct.tm, %struct.tm* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8 0, i8* %131, align 1
  %132 = load %struct.tm*, %struct.tm** %13, align 8
  %133 = getelementptr inbounds %struct.tm, %struct.tm* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = call i8* @atoi(i8* %135)
  %137 = load %struct.tm*, %struct.tm** %13, align 8
  %138 = getelementptr inbounds %struct.tm, %struct.tm* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load i32*, i32** %15, align 8
  store i32 1, i32* %139, align 4
  %140 = load i32, i32* @DTK_DATE, align 4
  store i32 %140, i32* %8, align 4
  br label %201

141:                                              ; preds = %119
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %58
  br label %145

145:                                              ; preds = %144, %48
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @DTK_TIME_M, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @DTK_TIME_M, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %200

151:                                              ; preds = %145
  %152 = load i32, i32* %9, align 4
  %153 = icmp eq i32 %152, 6
  br i1 %153, label %154, label %177

154:                                              ; preds = %151
  %155 = load i32, i32* @DTK_TIME_M, align 4
  %156 = load i32*, i32** %12, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 4
  %159 = call i8* @atoi(i8* %158)
  %160 = load %struct.tm*, %struct.tm** %13, align 8
  %161 = getelementptr inbounds %struct.tm, %struct.tm* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 4
  store i8 0, i8* %163, align 1
  %164 = load i8*, i8** %10, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 2
  %166 = call i8* @atoi(i8* %165)
  %167 = load %struct.tm*, %struct.tm** %13, align 8
  %168 = getelementptr inbounds %struct.tm, %struct.tm* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 2
  store i8 0, i8* %170, align 1
  %171 = load i8*, i8** %10, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = call i8* @atoi(i8* %172)
  %174 = load %struct.tm*, %struct.tm** %13, align 8
  %175 = getelementptr inbounds %struct.tm, %struct.tm* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* @DTK_TIME, align 4
  store i32 %176, i32* %8, align 4
  br label %201

177:                                              ; preds = %151
  %178 = load i32, i32* %9, align 4
  %179 = icmp eq i32 %178, 4
  br i1 %179, label %180, label %198

180:                                              ; preds = %177
  %181 = load i32, i32* @DTK_TIME_M, align 4
  %182 = load i32*, i32** %12, align 8
  store i32 %181, i32* %182, align 4
  %183 = load %struct.tm*, %struct.tm** %13, align 8
  %184 = getelementptr inbounds %struct.tm, %struct.tm* %183, i32 0, i32 3
  store i8* null, i8** %184, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  %187 = call i8* @atoi(i8* %186)
  %188 = load %struct.tm*, %struct.tm** %13, align 8
  %189 = getelementptr inbounds %struct.tm, %struct.tm* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** %10, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 2
  store i8 0, i8* %191, align 1
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = call i8* @atoi(i8* %193)
  %195 = load %struct.tm*, %struct.tm** %13, align 8
  %196 = getelementptr inbounds %struct.tm, %struct.tm* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* @DTK_TIME, align 4
  store i32 %197, i32* %8, align 4
  br label %201

198:                                              ; preds = %177
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %145
  store i32 -1, i32* %8, align 4
  br label %201

201:                                              ; preds = %200, %180, %154, %122, %94, %67
  %202 = load i32, i32* %8, align 4
  ret i32 %202
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtoint(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
