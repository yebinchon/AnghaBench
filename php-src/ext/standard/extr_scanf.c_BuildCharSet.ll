; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_scanf.c_BuildCharSet.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_scanf.c_BuildCharSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i64, i64, %struct.Range* }
%struct.Range = type { i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i8*)* @BuildCharSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @BuildCharSet(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = call i32 @memset(%struct.TYPE_4__* %9, i32 0, i32 40)
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 94
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 93
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  store i8* %29, i8** %5, align 8
  br label %31

31:                                               ; preds = %28, %21
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 93
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  store i8* %46, i8** %5, align 8
  br label %32

48:                                               ; preds = %32
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sub nsw i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = call i64 @safe_emalloc(i32 1, i32 %55, i32 0)
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %48
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @safe_emalloc(i32 2, i32 %63, i32 0)
  %65 = inttoptr i64 %64 to %struct.Range*
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  store %struct.Range* %65, %struct.Range** %67, align 8
  br label %71

68:                                               ; preds = %48
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  store %struct.Range* null, %struct.Range** %70, align 8
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  store i8* %76, i8** %5, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %6, align 1
  %80 = load i8*, i8** %5, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 93
  br i1 %83, label %89, label %84

84:                                               ; preds = %71
  %85 = load i8*, i8** %5, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 45
  br i1 %88, label %89, label %102

89:                                               ; preds = %84, %71
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = getelementptr inbounds i8, i8* %94, i64 %97
  store i8 %91, i8* %99, align 1
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %4, align 8
  store i8* %100, i8** %5, align 8
  br label %102

102:                                              ; preds = %89, %84
  br label %103

103:                                              ; preds = %213, %102
  %104 = load i8*, i8** %5, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 93
  br i1 %107, label %108, label %216

108:                                              ; preds = %103
  %109 = load i8*, i8** %4, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 45
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i8*, i8** %5, align 8
  %115 = load i8, i8* %114, align 1
  store i8 %115, i8* %6, align 1
  br label %213

116:                                              ; preds = %108
  %117 = load i8*, i8** %5, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 45
  br i1 %120, label %121, label %201

121:                                              ; preds = %116
  %122 = load i8*, i8** %4, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 93
  br i1 %125, label %126, label %146

126:                                              ; preds = %121
  %127 = load i8, i8* %6, align 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %132, align 8
  %135 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8 %127, i8* %135, align 1
  %136 = load i8*, i8** %5, align 8
  %137 = load i8, i8* %136, align 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %142, align 8
  %145 = getelementptr inbounds i8, i8* %140, i64 %143
  store i8 %137, i8* %145, align 1
  br label %200

146:                                              ; preds = %121
  %147 = load i8*, i8** %4, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %4, align 8
  store i8* %147, i8** %5, align 8
  %149 = load i8, i8* %6, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8*, i8** %5, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %146
  %156 = load i8, i8* %6, align 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load %struct.Range*, %struct.Range** %158, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.Range, %struct.Range* %159, i64 %162
  %164 = getelementptr inbounds %struct.Range, %struct.Range* %163, i32 0, i32 0
  store i8 %156, i8* %164, align 1
  %165 = load i8*, i8** %5, align 8
  %166 = load i8, i8* %165, align 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 4
  %169 = load %struct.Range*, %struct.Range** %168, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.Range, %struct.Range* %169, i64 %172
  %174 = getelementptr inbounds %struct.Range, %struct.Range* %173, i32 0, i32 1
  store i8 %166, i8* %174, align 1
  br label %195

175:                                              ; preds = %146
  %176 = load i8*, i8** %5, align 8
  %177 = load i8, i8* %176, align 1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  %180 = load %struct.Range*, %struct.Range** %179, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.Range, %struct.Range* %180, i64 %183
  %185 = getelementptr inbounds %struct.Range, %struct.Range* %184, i32 0, i32 0
  store i8 %177, i8* %185, align 1
  %186 = load i8, i8* %6, align 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 4
  %189 = load %struct.Range*, %struct.Range** %188, align 8
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.Range, %struct.Range* %189, i64 %192
  %194 = getelementptr inbounds %struct.Range, %struct.Range* %193, i32 0, i32 1
  store i8 %186, i8* %194, align 1
  br label %195

195:                                              ; preds = %175, %155
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %197, align 8
  br label %200

200:                                              ; preds = %195, %126
  br label %212

201:                                              ; preds = %116
  %202 = load i8*, i8** %5, align 8
  %203 = load i8, i8* %202, align 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %208, align 8
  %211 = getelementptr inbounds i8, i8* %206, i64 %209
  store i8 %203, i8* %211, align 1
  br label %212

212:                                              ; preds = %201, %200
  br label %213

213:                                              ; preds = %212, %113
  %214 = load i8*, i8** %4, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %4, align 8
  store i8* %214, i8** %5, align 8
  br label %103

216:                                              ; preds = %103
  %217 = load i8*, i8** %4, align 8
  ret i8* %217
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @safe_emalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
