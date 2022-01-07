; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_ThrowErrorData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/error/extr_elog.c_ThrowErrorData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

@errordata = common dso_local global %struct.TYPE_4__* null, align 8
@errordata_stack_depth = common dso_local global i64 0, align 8
@recursion_depth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ThrowErrorData(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 19
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 18
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 17
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 16
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @errstart(i32 %7, i32 %10, i32 %13, i32 %16, i32* null)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %200

20:                                               ; preds = %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @errordata, align 8
  %22 = load i64, i64* @errordata_stack_depth, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %3, align 8
  %24 = load i32, i32* @recursion_depth, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @recursion_depth, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 15
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @MemoryContextSwitchTo(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %20
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 14
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 14
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @pstrdup(i8* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 14
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 13
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 13
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @pstrdup(i8* %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %57, %52
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 12
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 12
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @pstrdup(i8* %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 12
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 11
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 11
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @pstrdup(i8* %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 11
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %81, %76
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 10
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 10
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @pstrdup(i8* %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 10
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %93, %88
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 9
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 9
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @pstrdup(i8* %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 9
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %105, %100
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 8
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 8
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @pstrdup(i8* %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 8
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %117, %112
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 7
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 7
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @pstrdup(i8* %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %129, %124
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 6
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 6
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @pstrdup(i8* %144)
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 6
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %141, %136
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 5
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @pstrdup(i8* %156)
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 5
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %153, %148
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 4
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 4
  %168 = load i8*, i8** %167, align 8
  %169 = call i8* @pstrdup(i8* %168)
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 4
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %165, %160
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %172
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = call i8* @pstrdup(i8* %190)
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %187, %172
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @MemoryContextSwitchTo(i32 %195)
  %197 = load i32, i32* @recursion_depth, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* @recursion_depth, align 4
  %199 = call i32 @errfinish(i32 0)
  br label %200

200:                                              ; preds = %194, %19
  ret void
}

declare dso_local i32 @errstart(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @errfinish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
