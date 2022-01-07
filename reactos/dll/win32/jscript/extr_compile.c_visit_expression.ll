; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_visit_expression.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_visit_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_19__*, %struct.TYPE_13__* }
%struct.TYPE_21__ = type { %struct.TYPE_14__*, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { %struct.TYPE_19__*, %struct.TYPE_14__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }

@S_OK = common dso_local global i32 0, align 4
@DEFAULT_UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_19__*)* @visit_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visit_expression(i32* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %14 = load i32, i32* @S_OK, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %175 [
    i32 185, label %18
    i32 184, label %18
    i32 183, label %18
    i32 181, label %18
    i32 180, label %18
    i32 179, label %18
    i32 171, label %18
    i32 175, label %18
    i32 178, label %18
    i32 176, label %18
    i32 174, label %18
    i32 177, label %18
    i32 172, label %18
    i32 173, label %18
    i32 170, label %18
    i32 169, label %18
    i32 167, label %18
    i32 164, label %18
    i32 161, label %18
    i32 160, label %18
    i32 159, label %18
    i32 157, label %18
    i32 156, label %18
    i32 154, label %18
    i32 153, label %18
    i32 152, label %18
    i32 151, label %18
    i32 148, label %18
    i32 145, label %18
    i32 144, label %18
    i32 142, label %18
    i32 141, label %18
    i32 140, label %18
    i32 132, label %18
    i32 133, label %18
    i32 131, label %18
    i32 166, label %18
    i32 168, label %37
    i32 162, label %37
    i32 149, label %37
    i32 146, label %37
    i32 139, label %37
    i32 138, label %37
    i32 137, label %37
    i32 136, label %37
    i32 135, label %37
    i32 129, label %37
    i32 128, label %37
    i32 155, label %44
    i32 150, label %44
    i32 130, label %44
    i32 182, label %45
    i32 165, label %71
    i32 143, label %71
    i32 163, label %108
    i32 158, label %138
    i32 147, label %143
    i32 134, label %150
  ]

18:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = bitcast %struct.TYPE_19__* %19 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = call i32 @visit_expression(i32* %21, %struct.TYPE_19__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @FAILED(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %177

31:                                               ; preds = %18
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = call i32 @visit_expression(i32* %32, %struct.TYPE_19__* %35)
  store i32 %36, i32* %6, align 4
  br label %175

37:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = bitcast %struct.TYPE_19__* %39 to %struct.TYPE_15__*
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = call i32 @visit_expression(i32* %38, %struct.TYPE_19__* %42)
  store i32 %43, i32* %6, align 4
  br label %175

44:                                               ; preds = %2, %2, %2
  br label %175

45:                                               ; preds = %2
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = bitcast %struct.TYPE_19__* %46 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %8, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %9, align 8
  br label %51

51:                                               ; preds = %66, %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = call i32 @visit_expression(i32* %55, %struct.TYPE_19__* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @FAILED(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %177

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %9, align 8
  br label %51

70:                                               ; preds = %51
  br label %175

71:                                               ; preds = %2, %2
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = bitcast %struct.TYPE_19__* %72 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %73, %struct.TYPE_21__** %10, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = call i32 @visit_expression(i32* %74, %struct.TYPE_19__* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @FAILED(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %177

84:                                               ; preds = %71
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** %11, align 8
  br label %88

88:                                               ; preds = %103, %84
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %90 = icmp ne %struct.TYPE_14__* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = call i32 @visit_expression(i32* %92, %struct.TYPE_19__* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @FAILED(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %177

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %11, align 8
  br label %88

107:                                              ; preds = %88
  br label %175

108:                                              ; preds = %2
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = bitcast %struct.TYPE_19__* %109 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %110, %struct.TYPE_20__** %12, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = call i32 @visit_expression(i32* %111, %struct.TYPE_19__* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @FAILED(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %177

121:                                              ; preds = %108
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = call i32 @visit_expression(i32* %122, %struct.TYPE_19__* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @FAILED(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %177

132:                                              ; preds = %121
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = call i32 @visit_expression(i32* %133, %struct.TYPE_19__* %136)
  store i32 %137, i32* %6, align 4
  br label %175

138:                                              ; preds = %2
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %141 = bitcast %struct.TYPE_19__* %140 to i32*
  %142 = call i32 @visit_function_expression(i32* %139, i32* %141)
  store i32 %142, i32* %6, align 4
  br label %175

143:                                              ; preds = %2
  %144 = load i32*, i32** %4, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %146 = bitcast %struct.TYPE_19__* %145 to %struct.TYPE_18__*
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = call i32 @visit_expression(i32* %144, %struct.TYPE_19__* %148)
  store i32 %149, i32* %6, align 4
  br label %175

150:                                              ; preds = %2
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %152 = bitcast %struct.TYPE_19__* %151 to %struct.TYPE_16__*
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  store %struct.TYPE_17__* %154, %struct.TYPE_17__** %13, align 8
  br label %155

155:                                              ; preds = %170, %150
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %157 = icmp ne %struct.TYPE_17__* %156, null
  br i1 %157, label %158, label %174

158:                                              ; preds = %155
  %159 = load i32*, i32** %4, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = call i32 @visit_expression(i32* %159, %struct.TYPE_19__* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @FAILED(i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %177

169:                                              ; preds = %158
  br label %170

170:                                              ; preds = %169
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  store %struct.TYPE_17__* %173, %struct.TYPE_17__** %13, align 8
  br label %155

174:                                              ; preds = %155
  br label %175

175:                                              ; preds = %2, %174, %143, %138, %132, %107, %70, %44, %37, %31
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %167, %130, %119, %100, %82, %63, %29
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @visit_function_expression(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
