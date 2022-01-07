; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_type_size.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccgen.c_type_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__ }

@VT_BTYPE = common dso_local global i32 0, align 4
@VT_PTR = common dso_local global i32 0, align 4
@VT_ARRAY = common dso_local global i32 0, align 4
@PTR_SIZE = common dso_local global i32 0, align 4
@VT_LDOUBLE = common dso_local global i32 0, align 4
@LDOUBLE_ALIGN = common dso_local global i32 0, align 4
@LDOUBLE_SIZE = common dso_local global i32 0, align 4
@VT_DOUBLE = common dso_local global i32 0, align 4
@VT_INT64 = common dso_local global i32 0, align 4
@tcc_state = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@VT_ENUM = common dso_local global i32 0, align 4
@VT_INT32 = common dso_local global i32 0, align 4
@VT_FLOAT = common dso_local global i32 0, align 4
@VT_INT16 = common dso_local global i32 0, align 4
@VT_QLONG = common dso_local global i32 0, align 4
@VT_QFLOAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @type_size(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VT_BTYPE, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = call i64 @is_structured(%struct.TYPE_7__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %151

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @VT_PTR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VT_ARRAY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %6, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @type_size(%struct.TYPE_7__* %44, i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %49, %39
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  store i32 %62, i32* %3, align 4
  br label %151

63:                                               ; preds = %32
  %64 = load i32, i32* @PTR_SIZE, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @PTR_SIZE, align 4
  store i32 %66, i32* %3, align 4
  br label %151

67:                                               ; preds = %28
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @VT_LDOUBLE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @LDOUBLE_ALIGN, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @LDOUBLE_SIZE, align 4
  store i32 %74, i32* %3, align 4
  br label %151

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @VT_DOUBLE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @VT_INT64, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %117

83:                                               ; preds = %79, %75
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tcc_state, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @strncmp(i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tcc_state, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tcc_state, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @strncmp(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = load i32*, i32** %5, align 8
  store i32 8, i32* %101, align 4
  br label %104

102:                                              ; preds = %94
  %103 = load i32*, i32** %5, align 8
  store i32 4, i32* %103, align 4
  br label %104

104:                                              ; preds = %102, %100
  br label %116

105:                                              ; preds = %89, %83
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tcc_state, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @strncmp(i32 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %105
  %112 = load i32*, i32** %5, align 8
  store i32 8, i32* %112, align 4
  br label %115

113:                                              ; preds = %105
  %114 = load i32*, i32** %5, align 8
  store i32 8, i32* %114, align 4
  br label %115

115:                                              ; preds = %113, %111
  br label %116

116:                                              ; preds = %115, %104
  store i32 8, i32* %3, align 4
  br label %151

117:                                              ; preds = %79
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @VT_ENUM, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32*, i32** %5, align 8
  store i32 8, i32* %122, align 4
  store i32 8, i32* %3, align 4
  br label %151

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @VT_INT32, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @VT_FLOAT, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127, %123
  %132 = load i32*, i32** %5, align 8
  store i32 4, i32* %132, align 4
  store i32 4, i32* %3, align 4
  br label %151

133:                                              ; preds = %127
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @VT_INT16, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32*, i32** %5, align 8
  store i32 2, i32* %138, align 4
  store i32 2, i32* %3, align 4
  br label %151

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @VT_QLONG, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @VT_QFLOAT, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %143, %139
  %148 = load i32*, i32** %5, align 8
  store i32 8, i32* %148, align 4
  store i32 16, i32* %3, align 4
  br label %151

149:                                              ; preds = %143
  %150 = load i32*, i32** %5, align 8
  store i32 1, i32* %150, align 4
  store i32 1, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %147, %137, %131, %121, %116, %71, %63, %57, %17
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @is_structured(%struct.TYPE_7__*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
