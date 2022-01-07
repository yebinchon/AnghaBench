; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lvm.c_luaV_concat.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lvm.c_luaV_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }

@MAX_SIZET = common dso_local global i64 0, align 8
@TM_CONCAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_concat(%struct.TYPE_18__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i64, i64* @MAX_SIZET, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = call %struct.TYPE_17__* @G(%struct.TYPE_18__* %16)
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = call %struct.TYPE_17__* @G(%struct.TYPE_18__* %23)
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %22, %3
  br label %28

28:                                               ; preds = %198, %27
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = call i32 @fixedstack(%struct.TYPE_18__* %35)
  store i32 2, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 2
  %39 = call i64 @ttisstring(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 2
  %44 = call i64 @ttisnumber(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41, %28
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i64 @tostring(%struct.TYPE_18__* %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %79, label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = call i32 @unfixedstack(%struct.TYPE_18__* %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 2
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 2
  %62 = load i32, i32* @TM_CONCAT, align 4
  %63 = call i32 @call_binTM(%struct.TYPE_18__* %55, i32 %57, i32 %59, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %52
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %68, %69
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 2
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = call i32 @luaG_concaterror(%struct.TYPE_18__* %72, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %65, %52
  br label %187

79:                                               ; preds = %46
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, 1
  %82 = call %struct.TYPE_19__* @tsvalue(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 2
  %90 = call i64 @tostring(%struct.TYPE_18__* %87, i32 %89)
  br label %186

91:                                               ; preds = %79
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call %struct.TYPE_19__* @tsvalue(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  store i32 1, i32* %9, align 4
  br label %97

97:                                               ; preds = %131, %91
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sub nsw i32 %105, 1
  %107 = call i64 @tostring(%struct.TYPE_18__* %102, i32 %106)
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %101, %97
  %110 = phi i1 [ false, %97 ], [ %108, %101 ]
  br i1 %110, label %111, label %134

111:                                              ; preds = %109
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %112, %113
  %115 = sub nsw i32 %114, 1
  %116 = call %struct.TYPE_19__* @tsvalue(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %13, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %10, align 8
  %122 = sub i64 %120, %121
  %123 = icmp uge i64 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %111
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = call i32 @luaG_runerror(%struct.TYPE_18__* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %111
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* %10, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %10, align 8
  br label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %97

134:                                              ; preds = %109
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %137 = call %struct.TYPE_17__* @G(%struct.TYPE_18__* %136)
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  store i64 %135, i64* %139, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = call %struct.TYPE_17__* @G(%struct.TYPE_18__* %141)
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i64, i64* %10, align 8
  %145 = call i8* @luaZ_openspace(%struct.TYPE_18__* %140, %struct.TYPE_20__* %143, i64 %144)
  store i8* %145, i8** %11, align 8
  store i64 0, i64* %10, align 8
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %169, %134
  %148 = load i32, i32* %12, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %172

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %151, %152
  %154 = call %struct.TYPE_19__* @tsvalue(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %14, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %12, align 4
  %162 = sub nsw i32 %160, %161
  %163 = call i32 @svalue(i32 %162)
  %164 = load i64, i64* %14, align 8
  %165 = call i32 @memcpy(i8* %159, i32 %163, i64 %164)
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %10, align 8
  br label %169

169:                                              ; preds = %150
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %12, align 4
  br label %147

172:                                              ; preds = %147
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %9, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = load i64, i64* %10, align 8
  %180 = call i32 @luaS_newlstr(%struct.TYPE_18__* %177, i8* %178, i64 %179)
  %181 = call i32 @setsvalue2s(%struct.TYPE_18__* %173, i32 %176, i32 %180)
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %183 = call %struct.TYPE_17__* @G(%struct.TYPE_18__* %182)
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = call i32 @luaZ_resetbuffer(%struct.TYPE_20__* %184)
  br label %186

186:                                              ; preds = %172, %86
  br label %187

187:                                              ; preds = %186, %78
  %188 = load i32, i32* %9, align 4
  %189 = sub nsw i32 %188, 1
  %190 = load i32, i32* %5, align 4
  %191 = sub nsw i32 %190, %189
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %9, align 4
  %193 = sub nsw i32 %192, 1
  %194 = load i32, i32* %6, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %6, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %197 = call i32 @unfixedstack(%struct.TYPE_18__* %196)
  br label %198

198:                                              ; preds = %187
  %199 = load i32, i32* %5, align 4
  %200 = icmp sgt i32 %199, 1
  br i1 %200, label %28, label %201

201:                                              ; preds = %198
  ret void
}

declare dso_local %struct.TYPE_17__* @G(%struct.TYPE_18__*) #1

declare dso_local i32 @fixedstack(%struct.TYPE_18__*) #1

declare dso_local i64 @ttisstring(i32) #1

declare dso_local i64 @ttisnumber(i32) #1

declare dso_local i64 @tostring(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @unfixedstack(%struct.TYPE_18__*) #1

declare dso_local i32 @call_binTM(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i32 @luaG_concaterror(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @tsvalue(i32) #1

declare dso_local i32 @luaG_runerror(%struct.TYPE_18__*, i8*) #1

declare dso_local i8* @luaZ_openspace(%struct.TYPE_18__*, %struct.TYPE_20__*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @svalue(i32) #1

declare dso_local i32 @setsvalue2s(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @luaS_newlstr(%struct.TYPE_18__*, i8*, i64) #1

declare dso_local i32 @luaZ_resetbuffer(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
