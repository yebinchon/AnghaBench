; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltFreeStylesheet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_xslt.c_xsltFreeStylesheet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i32*, %struct.TYPE_16__*, i32*, i64, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32*, i32*, i32*, i32, i32* }

@xsltGenericDebugContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltFreeStylesheet(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %3 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %4 = icmp eq %struct.TYPE_16__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %206

6:                                                ; preds = %1
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 19
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @xmlDocGetRootElement(i32* %22)
  %24 = call i32 @xsltCleanupStylesheetTree(i32* %19, i32 %23)
  br label %25

25:                                               ; preds = %16, %11, %6
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = call i32 @xsltFreeKeys(%struct.TYPE_16__* %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = call i32 @xsltFreeExts(%struct.TYPE_16__* %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = call i32 @xsltFreeTemplateHashes(%struct.TYPE_16__* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = call i32 @xsltFreeDecimalFormatList(%struct.TYPE_16__* %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 18
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @xsltFreeTemplateList(i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = call i32 @xsltFreeAttributeSetsHashes(%struct.TYPE_16__* %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %41 = call i32 @xsltFreeNamespaceAliasHashes(%struct.TYPE_16__* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = call i32 @xsltFreeStylePreComps(%struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = call i32 @xsltFreeStyleDocuments(%struct.TYPE_16__* %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = call i32 @xsltShutdownExts(%struct.TYPE_16__* %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 17
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %25
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 17
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @xsltFreeStackElemList(i32* %55)
  br label %57

57:                                               ; preds = %52, %25
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 16
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 16
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @xmlHashFree(i32* %65, i32* null)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 15
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 15
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @xmlHashFree(i32* %75, i32* null)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 14
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 14
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @xmlHashFree(i32* %85, i32* null)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 13
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = icmp ne %struct.TYPE_16__* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 13
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = call i32 @xmlFree(%struct.TYPE_16__* %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 12
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = icmp ne %struct.TYPE_16__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 12
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = call i32 @xmlFree(%struct.TYPE_16__* %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 11
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = icmp ne %struct.TYPE_16__* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 11
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = call i32 @xmlFree(%struct.TYPE_16__* %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 10
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = icmp ne %struct.TYPE_16__* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 10
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = call i32 @xmlFree(%struct.TYPE_16__* %125)
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 9
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = icmp ne %struct.TYPE_16__* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 9
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = call i32 @xmlFree(%struct.TYPE_16__* %135)
  br label %137

137:                                              ; preds = %132, %127
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = icmp ne %struct.TYPE_16__* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = call i32 @xmlFree(%struct.TYPE_16__* %145)
  br label %147

147:                                              ; preds = %142, %137
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 7
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = icmp ne %struct.TYPE_16__* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 7
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = call i32 @xmlFree(%struct.TYPE_16__* %155)
  br label %157

157:                                              ; preds = %152, %147
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 6
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = icmp ne %struct.TYPE_16__* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 6
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = call i32 @xmlFree(%struct.TYPE_16__* %165)
  br label %167

167:                                              ; preds = %162, %157
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @xsltFreeAVTList(i64 %175)
  br label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @xsltFreeStylesheetList(i32* %185)
  br label %187

187:                                              ; preds = %182, %177
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @xmlFreeDoc(i32* %195)
  br label %197

197:                                              ; preds = %192, %187
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @xmlDictFree(i32 %200)
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %203 = call i32 @memset(%struct.TYPE_16__* %202, i32 -1, i32 4)
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %205 = call i32 @xmlFree(%struct.TYPE_16__* %204)
  br label %206

206:                                              ; preds = %197, %5
  ret void
}

declare dso_local i32 @xsltCleanupStylesheetTree(i32*, i32) #1

declare dso_local i32 @xmlDocGetRootElement(i32*) #1

declare dso_local i32 @xsltFreeKeys(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltFreeExts(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltFreeTemplateHashes(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltFreeDecimalFormatList(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltFreeTemplateList(i32) #1

declare dso_local i32 @xsltFreeAttributeSetsHashes(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltFreeNamespaceAliasHashes(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltFreeStylePreComps(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltFreeStyleDocuments(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltShutdownExts(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltFreeStackElemList(i32*) #1

declare dso_local i32 @xmlHashFree(i32*, i32*) #1

declare dso_local i32 @xmlFree(%struct.TYPE_16__*) #1

declare dso_local i32 @xsltFreeAVTList(i64) #1

declare dso_local i32 @xsltFreeStylesheetList(i32*) #1

declare dso_local i32 @xmlFreeDoc(i32*) #1

declare dso_local i32 @xmlDictFree(i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
