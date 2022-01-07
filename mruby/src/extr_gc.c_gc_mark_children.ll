; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_gc.c_gc_mark_children.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_gc.c_gc_mark_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.RBasic = type { i32, i64, i32 }
%struct.RClass = type { i64 }
%struct.RProc = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.REnv = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.mrb_context = type { i32 }
%struct.RArray = type { i32 }
%struct.RString = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.RObject = type { i32 }
%struct.RFiber = type { %struct.mrb_context* }
%struct.RHash = type { i32 }
%struct.RRange = type { i32 }

@MRB_FL_CLASS_IS_ORIGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, %struct.RBasic*)* @gc_mark_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_mark_children(i32* %0, %struct.TYPE_13__* %1, %struct.RBasic* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.RBasic*, align 8
  %7 = alloca %struct.RClass*, align 8
  %8 = alloca %struct.RClass*, align 8
  %9 = alloca %struct.RProc*, align 8
  %10 = alloca %struct.REnv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mrb_context*, align 8
  %14 = alloca %struct.RArray*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.RString*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.RBasic* %2, %struct.RBasic** %6, align 8
  %18 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %19 = call i32 @is_gray(%struct.RBasic* %18)
  %20 = call i32 @mrb_assert(i32 %19)
  %21 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %22 = call i32 @paint_black(%struct.RBasic* %21)
  %23 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %24 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %30 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.RBasic*
  %33 = call i32 @mrb_gc_mark(i32* %28, %struct.RBasic* %32)
  %34 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %35 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %200 [
    i32 134, label %37
    i32 140, label %56
    i32 133, label %56
    i32 129, label %56
    i32 132, label %68
    i32 139, label %68
    i32 137, label %68
    i32 131, label %73
    i32 138, label %89
    i32 136, label %136
    i32 141, label %148
    i32 135, label %169
    i32 128, label %178
    i32 130, label %195
  ]

37:                                               ; preds = %3
  %38 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %39 = bitcast %struct.RBasic* %38 to %struct.RClass*
  store %struct.RClass* %39, %struct.RClass** %7, align 8
  %40 = load %struct.RClass*, %struct.RClass** %7, align 8
  %41 = load i32, i32* @MRB_FL_CLASS_IS_ORIGIN, align 4
  %42 = call i32 @MRB_FLAG_TEST(%struct.RClass* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.RClass*, %struct.RClass** %7, align 8
  %47 = call i32 @mrb_gc_mark_mt(i32* %45, %struct.RClass* %46)
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %51 = bitcast %struct.RBasic* %50 to %struct.RClass*
  %52 = getelementptr inbounds %struct.RClass, %struct.RClass* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.RBasic*
  %55 = call i32 @mrb_gc_mark(i32* %49, %struct.RBasic* %54)
  br label %201

56:                                               ; preds = %3, %3, %3
  %57 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %58 = bitcast %struct.RBasic* %57 to %struct.RClass*
  store %struct.RClass* %58, %struct.RClass** %8, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.RClass*, %struct.RClass** %8, align 8
  %61 = call i32 @mrb_gc_mark_mt(i32* %59, %struct.RClass* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.RClass*, %struct.RClass** %8, align 8
  %64 = getelementptr inbounds %struct.RClass, %struct.RClass* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.RBasic*
  %67 = call i32 @mrb_gc_mark(i32* %62, %struct.RBasic* %66)
  br label %68

68:                                               ; preds = %3, %3, %3, %56
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %71 = bitcast %struct.RBasic* %70 to %struct.RObject*
  %72 = call i32 @mrb_gc_mark_iv(i32* %69, %struct.RObject* %71)
  br label %201

73:                                               ; preds = %3
  %74 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %75 = bitcast %struct.RBasic* %74 to %struct.RProc*
  store %struct.RProc* %75, %struct.RProc** %9, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.RProc*, %struct.RProc** %9, align 8
  %78 = getelementptr inbounds %struct.RProc, %struct.RProc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.RBasic*
  %81 = call i32 @mrb_gc_mark(i32* %76, %struct.RBasic* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.RProc*, %struct.RProc** %9, align 8
  %84 = getelementptr inbounds %struct.RProc, %struct.RProc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.RBasic*
  %88 = call i32 @mrb_gc_mark(i32* %82, %struct.RBasic* %87)
  br label %201

89:                                               ; preds = %3
  %90 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %91 = bitcast %struct.RBasic* %90 to %struct.REnv*
  store %struct.REnv* %91, %struct.REnv** %10, align 8
  %92 = load %struct.REnv*, %struct.REnv** %10, align 8
  %93 = call i32 @MRB_ENV_STACK_SHARED_P(%struct.REnv* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %89
  %96 = load %struct.REnv*, %struct.REnv** %10, align 8
  %97 = getelementptr inbounds %struct.REnv, %struct.REnv* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = icmp ne %struct.TYPE_9__* %98, null
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %struct.REnv*, %struct.REnv** %10, align 8
  %102 = getelementptr inbounds %struct.REnv, %struct.REnv* %101, i32 0, i32 1
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.REnv*, %struct.REnv** %10, align 8
  %110 = getelementptr inbounds %struct.REnv, %struct.REnv* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to %struct.RBasic*
  %115 = call i32 @mrb_gc_mark(i32* %108, %struct.RBasic* %114)
  br label %116

116:                                              ; preds = %107, %100, %95, %89
  %117 = load %struct.REnv*, %struct.REnv** %10, align 8
  %118 = call i64 @MRB_ENV_STACK_LEN(%struct.REnv* %117)
  store i64 %118, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %119

119:                                              ; preds = %132, %116
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %12, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.REnv*, %struct.REnv** %10, align 8
  %126 = getelementptr inbounds %struct.REnv, %struct.REnv* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* %11, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @mrb_gc_mark_value(i32* %124, i32 %130)
  br label %132

132:                                              ; preds = %123
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %11, align 8
  br label %119

135:                                              ; preds = %119
  br label %201

136:                                              ; preds = %3
  %137 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %138 = bitcast %struct.RBasic* %137 to %struct.RFiber*
  %139 = getelementptr inbounds %struct.RFiber, %struct.RFiber* %138, i32 0, i32 0
  %140 = load %struct.mrb_context*, %struct.mrb_context** %139, align 8
  store %struct.mrb_context* %140, %struct.mrb_context** %13, align 8
  %141 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %142 = icmp ne %struct.mrb_context* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load i32*, i32** %4, align 8
  %145 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %146 = call i32 @mark_context(i32* %144, %struct.mrb_context* %145)
  br label %147

147:                                              ; preds = %143, %136
  br label %201

148:                                              ; preds = %3
  %149 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %150 = bitcast %struct.RBasic* %149 to %struct.RArray*
  store %struct.RArray* %150, %struct.RArray** %14, align 8
  store i64 0, i64* %15, align 8
  %151 = load %struct.RArray*, %struct.RArray** %14, align 8
  %152 = call i64 @ARY_LEN(%struct.RArray* %151)
  store i64 %152, i64* %16, align 8
  br label %153

153:                                              ; preds = %165, %148
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %16, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = load i32*, i32** %4, align 8
  %159 = load %struct.RArray*, %struct.RArray** %14, align 8
  %160 = call i32* @ARY_PTR(%struct.RArray* %159)
  %161 = load i64, i64* %15, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @mrb_gc_mark_value(i32* %158, i32 %163)
  br label %165

165:                                              ; preds = %157
  %166 = load i64, i64* %15, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %15, align 8
  br label %153

168:                                              ; preds = %153
  br label %201

169:                                              ; preds = %3
  %170 = load i32*, i32** %4, align 8
  %171 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %172 = bitcast %struct.RBasic* %171 to %struct.RObject*
  %173 = call i32 @mrb_gc_mark_iv(i32* %170, %struct.RObject* %172)
  %174 = load i32*, i32** %4, align 8
  %175 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %176 = bitcast %struct.RBasic* %175 to %struct.RHash*
  %177 = call i32 @mrb_gc_mark_hash(i32* %174, %struct.RHash* %176)
  br label %201

178:                                              ; preds = %3
  %179 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %180 = call i32 @RSTR_FSHARED_P(%struct.RBasic* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %178
  %183 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %184 = bitcast %struct.RBasic* %183 to %struct.RString*
  store %struct.RString* %184, %struct.RString** %17, align 8
  %185 = load i32*, i32** %4, align 8
  %186 = load %struct.RString*, %struct.RString** %17, align 8
  %187 = getelementptr inbounds %struct.RString, %struct.RString* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to %struct.RBasic*
  %193 = call i32 @mrb_gc_mark(i32* %185, %struct.RBasic* %192)
  br label %194

194:                                              ; preds = %182, %178
  br label %201

195:                                              ; preds = %3
  %196 = load i32*, i32** %4, align 8
  %197 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %198 = bitcast %struct.RBasic* %197 to %struct.RRange*
  %199 = call i32 @mrb_gc_mark_range(i32* %196, %struct.RRange* %198)
  br label %201

200:                                              ; preds = %3
  br label %201

201:                                              ; preds = %200, %195, %194, %169, %168, %147, %135, %73, %68, %48
  ret void
}

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @is_gray(%struct.RBasic*) #1

declare dso_local i32 @paint_black(%struct.RBasic*) #1

declare dso_local i32 @mrb_gc_mark(i32*, %struct.RBasic*) #1

declare dso_local i32 @MRB_FLAG_TEST(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_gc_mark_mt(i32*, %struct.RClass*) #1

declare dso_local i32 @mrb_gc_mark_iv(i32*, %struct.RObject*) #1

declare dso_local i32 @MRB_ENV_STACK_SHARED_P(%struct.REnv*) #1

declare dso_local i64 @MRB_ENV_STACK_LEN(%struct.REnv*) #1

declare dso_local i32 @mrb_gc_mark_value(i32*, i32) #1

declare dso_local i32 @mark_context(i32*, %struct.mrb_context*) #1

declare dso_local i64 @ARY_LEN(%struct.RArray*) #1

declare dso_local i32* @ARY_PTR(%struct.RArray*) #1

declare dso_local i32 @mrb_gc_mark_hash(i32*, %struct.RHash*) #1

declare dso_local i32 @RSTR_FSHARED_P(%struct.RBasic*) #1

declare dso_local i32 @mrb_gc_mark_range(i32*, %struct.RRange*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
