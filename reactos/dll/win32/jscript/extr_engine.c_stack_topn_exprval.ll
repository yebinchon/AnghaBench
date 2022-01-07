; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_stack_topn_exprval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_stack_topn_exprval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i8* }
%struct.TYPE_17__ = type { i32, i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i32 }

@EXPRVAL_INVALID = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@EXPRVAL_IDREF = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@EXPRVAL_STACK_REF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, %struct.TYPE_19__*)* @stack_topn_exprval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stack_topn_exprval(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = add i32 %15, 1
  %17 = call i32 @stack_topn(%struct.TYPE_18__* %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @jsval_type(i32 %18)
  switch i32 %19, label %195 [
    i32 130, label %20
    i32 129, label %154
    i32 128, label %178
  ]

20:                                               ; preds = %3
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @get_number(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %145, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp uge i32 %34, %37
  br i1 %38, label %39, label %145

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add i32 %43, %48
  %50 = icmp ult i32 %40, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp uge i32 %53, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %39
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub i32 %64, %67
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %87

73:                                               ; preds = %39
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub i32 %79, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %78, i64 %84
  %86 = load i32, i32* %85, align 4
  br label %87

87:                                               ; preds = %73, %58
  %88 = phi i32 [ %72, %58 ], [ %86, %73 ]
  store i32 %88, i32* %12, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i8* @jsdisp_get_id(i32 %95, i32 %96, i32 0, i8** %11)
  store i8* %97, i8** %13, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @FAILED(i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %87
  %102 = load i8*, i8** @EXPRVAL_INVALID, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %4, align 4
  br label %198

110:                                              ; preds = %87
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @jsdisp_addref(i32 %115)
  %117 = call i32 @jsval_obj(i32 %116)
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = load i32, i32* %6, align 4
  %120 = add i32 %119, 1
  %121 = call i32* @stack_top_ref(%struct.TYPE_18__* %118, i32 %120)
  store i32 %117, i32* %121, align 4
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @jsval_number(i8* %122)
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32* @stack_top_ref(%struct.TYPE_18__* %124, i32 %125)
  store i32 %123, i32* %126, align 4
  %127 = load i8*, i8** @EXPRVAL_IDREF, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  store i8* %139, i8** %143, align 8
  %144 = load i32, i32* @TRUE, align 4
  store i32 %144, i32* %4, align 4
  br label %198

145:                                              ; preds = %33, %20
  %146 = load i8*, i8** @EXPRVAL_STACK_REF, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %4, align 4
  br label %198

154:                                              ; preds = %3
  %155 = load i8*, i8** @EXPRVAL_IDREF, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @get_object(i32 %158)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  store i32 %159, i32* %163, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @stack_topn(%struct.TYPE_18__* %164, i32 %165)
  %167 = call i32 @is_number(i32 %166)
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @stack_topn(%struct.TYPE_18__* %169, i32 %170)
  %172 = call i8* @get_number(i32 %171)
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  store i8* %172, i8** %176, align 8
  %177 = load i32, i32* @TRUE, align 4
  store i32 %177, i32* %4, align 4
  br label %198

178:                                              ; preds = %3
  %179 = load i8*, i8** @EXPRVAL_INVALID, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @stack_topn(%struct.TYPE_18__* %182, i32 %183)
  %185 = call i32 @is_number(i32 %184)
  %186 = call i32 @assert(i32 %185)
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @stack_topn(%struct.TYPE_18__* %187, i32 %188)
  %190 = call i8* @get_number(i32 %189)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  store i8* %190, i8** %193, align 8
  %194 = load i32, i32* @FALSE, align 4
  store i32 %194, i32* %4, align 4
  br label %198

195:                                              ; preds = %3
  %196 = call i32 @assert(i32 0)
  %197 = load i32, i32* @FALSE, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %195, %178, %154, %145, %110, %101
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @stack_topn(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @jsval_type(i32) #1

declare dso_local i8* @get_number(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @jsdisp_get_id(i32, i32, i32, i8**) #1

declare dso_local i32 @FAILED(i8*) #1

declare dso_local i32 @jsval_obj(i32) #1

declare dso_local i32 @jsdisp_addref(i32) #1

declare dso_local i32* @stack_top_ref(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @jsval_number(i8*) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @is_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
