; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_x86_64.c_is_inside_epilog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_cpu_x86_64.c_is_inside_epilog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_stack_walk = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_stack_walk*, i64, i64, %struct.TYPE_3__*)* @is_inside_epilog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_inside_epilog(%struct.cpu_stack_walk* %0, i64 %1, i64 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_stack_walk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cpu_stack_walk* %0, %struct.cpu_stack_walk** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %14 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %14, i64 %15, i32* %10, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %5, align 4
  br label %206

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 248
  %23 = icmp eq i32 %22, 72
  br i1 %23, label %24, label %100

24:                                               ; preds = %20
  %25 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %25, i64 %27, i32* %11, i32 1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %5, align 4
  br label %206

32:                                               ; preds = %24
  %33 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, 2
  %36 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %33, i64 %35, i32* %12, i32 1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %5, align 4
  br label %206

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %99 [
    i32 129, label %42
    i32 131, label %53
    i32 141, label %64
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 72
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 196
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %49, 7
  store i64 %50, i64* %7, align 8
  br label %99

51:                                               ; preds = %45, %42
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %5, align 4
  br label %206

53:                                               ; preds = %40
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 72
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 196
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = add nsw i64 %60, 4
  store i64 %61, i64* %7, align 8
  br label %99

62:                                               ; preds = %56, %53
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %5, align 4
  br label %206

64:                                               ; preds = %40
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 6
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %5, align 4
  br label %206

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, 3
  %73 = and i32 %72, 7
  %74 = icmp ne i32 %73, 4
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %5, align 4
  br label %206

77:                                               ; preds = %70
  %78 = load i32, i32* %12, align 4
  %79 = and i32 %78, 7
  %80 = icmp eq i32 %79, 4
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %5, align 4
  br label %206

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = ashr i32 %84, 6
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i64, i64* %7, align 8
  %89 = add nsw i64 %88, 4
  store i64 %89, i64* %7, align 8
  br label %99

90:                                               ; preds = %83
  %91 = load i32, i32* %12, align 4
  %92 = ashr i32 %91, 6
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i64, i64* %7, align 8
  %96 = add nsw i64 %95, 7
  store i64 %96, i64* %7, align 8
  br label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %5, align 4
  br label %206

99:                                               ; preds = %40, %94, %87, %59, %48
  br label %100

100:                                              ; preds = %99, %20
  br label %101

101:                                              ; preds = %190, %157, %123, %100
  %102 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %102, i64 %103, i32* %10, i32 1)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %5, align 4
  br label %206

108:                                              ; preds = %101
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 240
  %111 = icmp eq i32 %110, 64
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %7, align 8
  %116 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %113, i64 %115, i32* %10, i32 1)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %5, align 4
  br label %206

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %108
  %122 = load i32, i32* %10, align 4
  switch i32 %122, label %204 [
    i32 88, label %123
    i32 89, label %123
    i32 90, label %123
    i32 91, label %123
    i32 92, label %123
    i32 93, label %123
    i32 94, label %123
    i32 95, label %123
    i32 194, label %126
    i32 195, label %126
    i32 233, label %128
    i32 235, label %159
    i32 243, label %192
  ]

123:                                              ; preds = %121, %121, %121, %121, %121, %121, %121, %121
  %124 = load i64, i64* %7, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %7, align 8
  br label %101

126:                                              ; preds = %121, %121
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %5, align 4
  br label %206

128:                                              ; preds = %121
  %129 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = add nsw i64 %130, 1
  %132 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %129, i64 %131, i32* %13, i32 4)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %5, align 4
  br label %206

136:                                              ; preds = %128
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 5, %137
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %7, align 8
  %141 = add nsw i64 %140, %139
  store i64 %141, i64* %7, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %8, align 8
  %144 = sub nsw i64 %142, %143
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp sge i64 %144, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %136
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* %8, align 8
  %152 = sub nsw i64 %150, %151
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %101

158:                                              ; preds = %149, %136
  br label %204

159:                                              ; preds = %121
  %160 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %161 = load i64, i64* %7, align 8
  %162 = add nsw i64 %161, 1
  %163 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %160, i64 %162, i32* %11, i32 1)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %159
  %166 = load i32, i32* @FALSE, align 4
  store i32 %166, i32* %5, align 4
  br label %206

167:                                              ; preds = %159
  %168 = load i32, i32* %11, align 4
  %169 = trunc i32 %168 to i8
  %170 = sext i8 %169 to i32
  %171 = add nsw i32 2, %170
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %7, align 8
  %174 = add nsw i64 %173, %172
  store i64 %174, i64* %7, align 8
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* %8, align 8
  %177 = sub nsw i64 %175, %176
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp sge i64 %177, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %167
  %183 = load i64, i64* %7, align 8
  %184 = load i64, i64* %8, align 8
  %185 = sub nsw i64 %183, %184
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp slt i64 %185, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %101

191:                                              ; preds = %182, %167
  br label %204

192:                                              ; preds = %121
  %193 = load %struct.cpu_stack_walk*, %struct.cpu_stack_walk** %6, align 8
  %194 = load i64, i64* %7, align 8
  %195 = add nsw i64 %194, 1
  %196 = call i32 @sw_read_mem(%struct.cpu_stack_walk* %193, i64 %195, i32* %11, i32 1)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %192
  %199 = load i32, i32* @FALSE, align 4
  store i32 %199, i32* %5, align 4
  br label %206

200:                                              ; preds = %192
  %201 = load i32, i32* %11, align 4
  %202 = icmp eq i32 %201, 195
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %5, align 4
  br label %206

204:                                              ; preds = %121, %191, %158
  %205 = load i32, i32* @FALSE, align 4
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %204, %200, %198, %165, %134, %126, %118, %106, %97, %81, %75, %68, %62, %51, %38, %30, %18
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @sw_read_mem(%struct.cpu_stack_walk*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
