; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltGetInheritedNsList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltGetInheritedNsList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32*, i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_12__* }

@XML_ELEMENT_NODE = common dso_local global i64 0, align 8
@XSLT_NAMESPACE = common dso_local global i32* null, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"xsltGetInheritedNsList : out of memory!\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"xsltGetInheritedNsList : realloc failed!\0A\00", align 1
@xsltGenericDebugContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_13__*)* @xsltGetInheritedNsList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltGetInheritedNsList(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__** null, %struct.TYPE_12__*** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 10, i32* %11, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %28, align 8
  %30 = icmp ne %struct.TYPE_12__** %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21, %18, %15, %3
  store i32 0, i32* %4, align 4
  br label %209

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %193, %32
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %197

36:                                               ; preds = %33
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XML_ELEMENT_NODE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %193

42:                                               ; preds = %36
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %8, align 8
  br label %46

46:                                               ; preds = %188, %42
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = icmp ne %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %192

49:                                               ; preds = %46
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** @XSLT_NAMESPACE, align 8
  %54 = call i64 @xmlStrEqual(i32* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %188

57:                                               ; preds = %49
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @xsltCheckExtPrefix(%struct.TYPE_11__* %63, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %188

70:                                               ; preds = %62, %57
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @xmlStrEqual(i32* %80, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %188

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %71

95:                                               ; preds = %71
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %97 = icmp eq %struct.TYPE_12__** %96, null
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 8
  %103 = trunc i64 %102 to i32
  %104 = call i64 @xmlMalloc(i32 %103)
  %105 = inttoptr i64 %104 to %struct.TYPE_12__**
  store %struct.TYPE_12__** %105, %struct.TYPE_12__*** %9, align 8
  %106 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %107 = icmp eq %struct.TYPE_12__** %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i32, i32* @xmlGenericErrorContext, align 4
  %110 = call i32 @xmlGenericError(i32 %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %209

111:                                              ; preds = %98
  %112 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %112, i64 %114
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %115, align 8
  br label %116

116:                                              ; preds = %111, %95
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %148, %116
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %151

121:                                              ; preds = %117
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %125, i64 %127
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %124, %131
  br i1 %132, label %146, label %133

133:                                              ; preds = %121
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %137, i64 %139
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i64 @xmlStrEqual(i32* %136, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133, %121
  br label %151

147:                                              ; preds = %133
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %117

151:                                              ; preds = %146, %117
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %187

155:                                              ; preds = %151
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = mul nsw i32 %160, 2
  store i32 %161, i32* %11, align 4
  %162 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 8
  %167 = trunc i64 %166 to i32
  %168 = call i64 @xmlRealloc(%struct.TYPE_12__** %162, i32 %167)
  %169 = inttoptr i64 %168 to %struct.TYPE_12__**
  store %struct.TYPE_12__** %169, %struct.TYPE_12__*** %9, align 8
  %170 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %171 = icmp eq %struct.TYPE_12__** %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %159
  %173 = load i32, i32* @xmlGenericErrorContext, align 4
  %174 = call i32 @xmlGenericError(i32 %173, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %209

175:                                              ; preds = %159
  br label %176

176:                                              ; preds = %175, %155
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %178 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %178, i64 %181
  store %struct.TYPE_12__* %177, %struct.TYPE_12__** %182, align 8
  %183 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %183, i64 %185
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %186, align 8
  br label %187

187:                                              ; preds = %176, %151
  br label %188

188:                                              ; preds = %187, %90, %69, %56
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  store %struct.TYPE_12__* %191, %struct.TYPE_12__** %8, align 8
  br label %46

192:                                              ; preds = %46
  br label %193

193:                                              ; preds = %192, %36
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  store %struct.TYPE_13__* %196, %struct.TYPE_13__** %7, align 8
  br label %33

197:                                              ; preds = %33
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %9, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  store %struct.TYPE_12__** %204, %struct.TYPE_12__*** %206, align 8
  br label %207

207:                                              ; preds = %200, %197
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %172, %108, %31
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i64 @xmlStrEqual(i32*, i32*) #1

declare dso_local i64 @xsltCheckExtPrefix(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlGenericError(i32, i8*) #1

declare dso_local i64 @xmlRealloc(%struct.TYPE_12__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
