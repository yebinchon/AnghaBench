; ModuleID = '/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_bool.c_infix.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_bool.c_infix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@OPR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"( \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" )\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %c %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @infix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infix(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @check_stack_depth()
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VAL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = call i32 @RESIZEBUF(%struct.TYPE_6__* %17, i32 11)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 0)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 -1
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %35, align 8
  br label %198

38:                                               ; preds = %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 33
  br i1 %45, label %46, label %102

46:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = call i32 @RESIZEBUF(%struct.TYPE_6__* %47, i32 1)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8 33, i8* %51, align 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %53, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8 0, i8* %58, align 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 -1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %60, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @OPR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = call i32 @RESIZEBUF(%struct.TYPE_6__* %71, i32 2)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 0)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %70, %46
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = load i32, i32* %5, align 4
  call void @infix(%struct.TYPE_6__* %84, i32 %85)
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = call i32 @RESIZEBUF(%struct.TYPE_6__* %89, i32 2)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @strchr(i8* %97, i8 signext 0)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %88, %83
  br label %197

102:                                              ; preds = %38
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %6, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 -1
  store %struct.TYPE_5__* %112, %struct.TYPE_5__** %110, align 8
  %113 = load i64, i64* %6, align 8
  %114 = icmp eq i64 %113, 124
  br i1 %114, label %115, label %131

115:                                              ; preds = %102
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = call i32 @RESIZEBUF(%struct.TYPE_6__* %119, i32 2)
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @strchr(i8* %127, i8 signext 0)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %118, %115, %102
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store %struct.TYPE_5__* %134, %struct.TYPE_5__** %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 16, i32* %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = mul i64 1, %139
  %141 = trunc i64 %140 to i32
  %142 = call i64 @palloc(i32 %141)
  %143 = inttoptr i64 %142 to i8*
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i8* %143, i8** %144, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  call void @infix(%struct.TYPE_6__* %7, i32 0)
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %149, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  call void @infix(%struct.TYPE_6__* %150, i32 0)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = ptrtoint i8* %153 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = add nsw i64 3, %158
  %160 = trunc i64 %159 to i32
  %161 = call i32 @RESIZEBUF(%struct.TYPE_6__* %151, i32 %160)
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i8*, i8*, ...) @sprintf(i8* %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %165, i8* %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @strchr(i8* %171, i8 signext 0)
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @pfree(i8* %176)
  %178 = load i64, i64* %6, align 8
  %179 = icmp eq i64 %178, 124
  br i1 %179, label %180, label %196

180:                                              ; preds = %131
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %180
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %185 = call i32 @RESIZEBUF(%struct.TYPE_6__* %184, i32 2)
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i8* @strchr(i8* %192, i8 signext 0)
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  br label %196

196:                                              ; preds = %183, %180, %131
  br label %197

197:                                              ; preds = %196, %101
  br label %198

198:                                              ; preds = %197, %16
  ret void
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @RESIZEBUF(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
