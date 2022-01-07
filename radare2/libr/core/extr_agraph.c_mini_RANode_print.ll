; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_mini_RANode_print.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_mini_RANode_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8* }

@TITLE_LEN = common dso_local global i32 0, align 4
@MINIGRAPH_NODE_CENTER_X = common dso_local global i32 0, align 4
@MINIGRAPH_NODE_TEXT_CUR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"[ %s ]\00", align 1
@discroll = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"____\00", align 1
@MINIGRAPH_NODE_TITLE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s__%s__\00", align 1
@Color_RESET = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"__%s__\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"  %s  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32)* @mini_RANode_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mini_RANode_print(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @TITLE_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MINIGRAPH_NODE_CENTER_X, align 4
  %25 = add nsw i32 %23, %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @G(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MINIGRAPH_NODE_CENTER_X, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @G(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %31
  store i32 1, i32* %13, align 4
  br label %227

47:                                               ; preds = %31, %4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MINIGRAPH_NODE_CENTER_X, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %52, %57
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %61, %47
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MINIGRAPH_NODE_CENTER_X, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @G(i32 %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %64
  store i32 1, i32* %13, align 4
  br label %227

78:                                               ; preds = %64
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %214

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %157

84:                                               ; preds = %81
  %85 = load i8*, i8** @MINIGRAPH_NODE_TEXT_CUR, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = call i32 @W(i8* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 0, %94
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 0, %100
  %102 = add nsw i32 %101, 2
  %103 = call i32 @G(i32 %95, i32 %102)
  %104 = sub i64 %18, 1
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %108)
  %110 = call i32 @W(i8* %20)
  %111 = load i64, i64* @discroll, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %137

113:                                              ; preds = %84
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = load i64, i64* @discroll, align 8
  %118 = call i8* @r_str_ansi_crop(i8* %116, i32 0, i64 %117, i32 -1, i32 -1)
  store i8* %118, i8** %14, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 0, %123
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 0, %129
  %131 = add nsw i32 %130, 3
  %132 = call i32 @G(i32 %124, i32 %131)
  %133 = load i8*, i8** %14, align 8
  %134 = call i32 @W(i8* %133)
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @free(i8* %135)
  br label %156

137:                                              ; preds = %84
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 0, %142
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 0, %148
  %150 = add nsw i32 %149, 3
  %151 = call i32 @G(i32 %143, i32 %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @W(i8* %154)
  br label %156

156:                                              ; preds = %137, %113
  br label %213

157:                                              ; preds = %81
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %181

162:                                              ; preds = %157
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strlen(i8* %165)
  store i32 %166, i32* %16, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %15, align 8
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* @MINIGRAPH_NODE_TITLE_LEN, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %162
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @MINIGRAPH_NODE_TITLE_LEN, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i8*, i8** %15, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %179, i8** %15, align 8
  br label %180

180:                                              ; preds = %173, %162
  br label %181

181:                                              ; preds = %180, %157
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = sub i64 %18, 1
  %190 = trunc i64 %189 to i32
  %191 = load i8*, i8** @Color_RESET, align 8
  %192 = load i8*, i8** %15, align 8
  %193 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %191, i8* %192)
  br label %199

194:                                              ; preds = %181
  %195 = sub i64 %18, 1
  %196 = trunc i64 %195 to i32
  %197 = load i8*, i8** %15, align 8
  %198 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %194, %188
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @strlen(i8* %20)
  %205 = sext i32 %204 to i64
  %206 = sub i64 %18, %205
  %207 = sub i64 %206, 1
  %208 = trunc i64 %207 to i32
  %209 = call i32 @append_shortcut(%struct.TYPE_9__* %200, i8* %20, i8* %203, i32 %208)
  %210 = load i32, i32* %12, align 4
  %211 = call i8* @r_str_ansi_crop(i8* %20, i32 %210, i64 0, i32 20, i32 1)
  %212 = call i32 @W(i8* %211)
  br label %213

213:                                              ; preds = %199, %156
  br label %226

214:                                              ; preds = %78
  %215 = sub i64 %18, 1
  %216 = trunc i64 %215 to i32
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 3
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %216, i8* %220, i8* %223)
  %225 = call i32 @W(i8* %20)
  br label %226

226:                                              ; preds = %214, %213
  store i32 1, i32* %13, align 4
  br label %227

227:                                              ; preds = %226, %77, %46
  %228 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %228)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @G(i32, i32) #2

declare dso_local i32 @W(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @r_str_ansi_crop(i8*, i32, i64, i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @append_shortcut(%struct.TYPE_9__*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
