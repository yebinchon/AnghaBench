; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_iis.c_kuhl_m_iis_apphost_site.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_iis.c_kuhl_m_iis_apphost_site.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [15 x i32] [i32 10, i32 42, i32 32, i32 83, i32 105, i32 116, i32 101, i32 58, i32 32, i32 39, i32 37, i32 115, i32 39, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [12 x i32] [i32 97, i32 112, i32 112, i32 108, i32 105, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@S_OK = common dso_local global i64 0, align 8
@NODE_ELEMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 112, i32 97, i32 116, i32 104, i32 0], align 4
@.str.4 = private unnamed_addr constant [26 x i32] [i32 32, i32 32, i32 62, i32 32, i32 65, i32 112, i32 112, i32 108, i32 105, i32 99, i32 97, i32 116, i32 105, i32 111, i32 110, i32 32, i32 80, i32 97, i32 116, i32 104, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [17 x i32] [i32 118, i32 105, i32 114, i32 116, i32 117, i32 97, i32 108, i32 68, i32 105, i32 114, i32 101, i32 99, i32 116, i32 111, i32 114, i32 121, i32 0], align 4
@.str.6 = private unnamed_addr constant [35 x i32] [i32 32, i32 32, i32 32, i32 32, i32 45, i32 32, i32 86, i32 105, i32 114, i32 116, i32 117, i32 97, i32 108, i32 68, i32 105, i32 114, i32 101, i32 99, i32 116, i32 111, i32 114, i32 121, i32 32, i32 80, i32 97, i32 116, i32 104, i32 58, i32 32, i32 37, i32 115, i32 32, i32 40, i32 32, i32 0], align 4
@.str.7 = private unnamed_addr constant [13 x i32] [i32 112, i32 104, i32 121, i32 115, i32 105, i32 99, i32 97, i32 108, i32 80, i32 97, i32 116, i32 104, i32 0], align 4
@.str.8 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.9 = private unnamed_addr constant [4 x i32] [i32 32, i32 41, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [9 x i32] [i32 117, i32 115, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.11 = private unnamed_addr constant [20 x i32] [i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 85, i32 115, i32 101, i32 114, i32 110, i32 97, i32 109, i32 101, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [9 x i32] [i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 0], align 4
@.str.13 = private unnamed_addr constant [20 x i32] [i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 80, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_iis_apphost_site(i32 %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @kull_m_xml_getAttribute(i32* %19, i8* bitcast ([5 x i32]* @.str to i8*))
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %170

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.1 to i8*), i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @LocalFree(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @IXMLDOMNode_selectNodes(i32* %27, i8* bitcast ([12 x i32]* @.str.2 to i8*), i32** %10)
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %169

31:                                               ; preds = %22
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %169

34:                                               ; preds = %31
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @IXMLDOMNodeList_get_length(i32* %35, i64* %15)
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %168

39:                                               ; preds = %34
  store i64 0, i64* %17, align 8
  br label %40

40:                                               ; preds = %164, %39
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* %15, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %167

44:                                               ; preds = %40
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %17, align 8
  %47 = call i64 @IXMLDOMNodeList_get_item(i32* %45, i64 %46, i32** %12)
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %163

50:                                               ; preds = %44
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %163

53:                                               ; preds = %50
  %54 = load i32*, i32** %12, align 8
  %55 = call i64 @IXMLDOMNode_get_nodeType(i32* %54, i32* %14)
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %160

58:                                               ; preds = %53
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @NODE_ELEMENT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %160

62:                                               ; preds = %58
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @kull_m_xml_getAttribute(i32* %63, i8* bitcast ([5 x i32]* @.str.3 to i8*))
  store i32 %64, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %159

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.4 to i8*), i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @LocalFree(i32 %69)
  %71 = load i32*, i32** %12, align 8
  %72 = call i64 @IXMLDOMNode_selectNodes(i32* %71, i8* bitcast ([17 x i32]* @.str.5 to i8*), i32** %11)
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %158

75:                                               ; preds = %66
  %76 = load i32*, i32** %11, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %158

78:                                               ; preds = %75
  %79 = load i32*, i32** %11, align 8
  %80 = call i64 @IXMLDOMNodeList_get_length(i32* %79, i64* %16)
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %157

83:                                               ; preds = %78
  store i64 0, i64* %18, align 8
  br label %84

84:                                               ; preds = %153, %83
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* %16, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %156

88:                                               ; preds = %84
  %89 = load i32*, i32** %11, align 8
  %90 = load i64, i64* %18, align 8
  %91 = call i64 @IXMLDOMNodeList_get_item(i32* %89, i64 %90, i32** %13)
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %152

94:                                               ; preds = %88
  %95 = load i32*, i32** %13, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %152

97:                                               ; preds = %94
  %98 = load i32*, i32** %13, align 8
  %99 = call i64 @IXMLDOMNode_get_nodeType(i32* %98, i32* %14)
  %100 = load i64, i64* @S_OK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %149

102:                                              ; preds = %97
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @NODE_ELEMENT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %149

106:                                              ; preds = %102
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @kull_m_xml_getAttribute(i32* %107, i8* bitcast ([5 x i32]* @.str.3 to i8*))
  store i32 %108, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %148

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  %112 = call i32 (i8*, ...) @kprintf(i8* bitcast ([35 x i32]* @.str.6 to i8*), i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @LocalFree(i32 %113)
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @kull_m_xml_getAttribute(i32* %115, i8* bitcast ([13 x i32]* @.str.7 to i8*))
  store i32 %116, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.8 to i8*), i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @LocalFree(i32 %121)
  br label %123

123:                                              ; preds = %118, %110
  %124 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.9 to i8*))
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @kull_m_xml_getAttribute(i32* %125, i8* bitcast ([9 x i32]* @.str.10 to i8*))
  store i32 %126, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %123
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.11 to i8*), i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @LocalFree(i32 %131)
  %133 = load i32*, i32** %13, align 8
  %134 = call i32 @kull_m_xml_getAttribute(i32* %133, i8* bitcast ([9 x i32]* @.str.12 to i8*))
  store i32 %134, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %128
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.13 to i8*), i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = load i32**, i32*** %6, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @kuhl_m_iis_maybeEncrypted(i32 %139, i32** %140, i32* %141, i32 %142)
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @LocalFree(i32 %144)
  br label %146

146:                                              ; preds = %136, %128
  br label %147

147:                                              ; preds = %146, %123
  br label %148

148:                                              ; preds = %147, %106
  br label %149

149:                                              ; preds = %148, %102, %97
  %150 = load i32*, i32** %13, align 8
  %151 = call i32 @IXMLDOMNode_Release(i32* %150)
  br label %152

152:                                              ; preds = %149, %94, %88
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %18, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %18, align 8
  br label %84

156:                                              ; preds = %84
  br label %157

157:                                              ; preds = %156, %78
  br label %158

158:                                              ; preds = %157, %75, %66
  br label %159

159:                                              ; preds = %158, %62
  br label %160

160:                                              ; preds = %159, %58, %53
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @IXMLDOMNode_Release(i32* %161)
  br label %163

163:                                              ; preds = %160, %50, %44
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %17, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %17, align 8
  br label %40

167:                                              ; preds = %40
  br label %168

168:                                              ; preds = %167, %34
  br label %169

169:                                              ; preds = %168, %31, %22
  br label %170

170:                                              ; preds = %169, %4
  ret void
}

declare dso_local i32 @kull_m_xml_getAttribute(i32*, i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i64 @IXMLDOMNode_selectNodes(i32*, i8*, i32**) #1

declare dso_local i64 @IXMLDOMNodeList_get_length(i32*, i64*) #1

declare dso_local i64 @IXMLDOMNodeList_get_item(i32*, i64, i32**) #1

declare dso_local i64 @IXMLDOMNode_get_nodeType(i32*, i32*) #1

declare dso_local i32 @kuhl_m_iis_maybeEncrypted(i32, i32**, i32*, i32) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
