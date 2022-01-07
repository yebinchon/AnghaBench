; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_debuglvcolumn_t.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_debuglvcolumn_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@LVCF_SUBITEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"iSubItem=%d, \00", align 1
@LVCF_FMT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"fmt=%x, \00", align 1
@LVCF_WIDTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"cx=%d, \00", align 1
@LVCF_TEXT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"pszText=%s, cchTextMax=%d, \00", align 1
@LVCF_IMAGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"iImage=%d, \00", align 1
@LVCF_ORDER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"iOrder=%d, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32)* @debuglvcolumn_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debuglvcolumn_t(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i8* (...) @debug_getbuf()
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* @DEBUG_BUFFER_SIZE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %209

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %189

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LVCF_SUBITEM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %8, align 4
  br label %45

44:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %189

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @LVCF_FMT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %64, i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %8, align 4
  br label %71

70:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %189

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @LVCF_WIDTH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %75
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  store i32 %95, i32* %8, align 4
  br label %97

96:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %89
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %189

101:                                              ; preds = %97
  %102 = load i32, i32* %8, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @LVCF_TEXT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %101
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i8* @debugtext_tn(i32 %120, i32 %121, i32 80)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %116, i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %122, i32 %125)
  store i32 %126, i32* %8, align 4
  br label %128

127:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %127, %115
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %189

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = load i8*, i8** %6, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %9, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @LVCF_IMAGE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %132
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %147, i32 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %151)
  store i32 %152, i32* %8, align 4
  br label %154

153:                                              ; preds = %132
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %153, %146
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %189

158:                                              ; preds = %154
  %159 = load i32, i32* %8, align 4
  %160 = load i8*, i8** %6, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %6, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %9, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @LVCF_ORDER, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %158
  %173 = load i8*, i8** %6, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %173, i32 %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %177)
  store i32 %178, i32* %8, align 4
  br label %180

179:                                              ; preds = %158
  store i32 0, i32* %8, align 4
  br label %180

180:                                              ; preds = %179, %172
  %181 = load i32, i32* %8, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  br label %189

184:                                              ; preds = %180
  %185 = load i32, i32* %8, align 4
  %186 = load i8*, i8** %6, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %6, align 8
  br label %195

189:                                              ; preds = %183, %157, %131, %100, %74, %48, %22
  %190 = load i8*, i8** %7, align 8
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 @strlen(i8* %191)
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  store i8* %194, i8** %6, align 8
  br label %195

195:                                              ; preds = %189, %184
  %196 = load i8*, i8** %6, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = ptrtoint i8* %196 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = icmp sgt i64 %200, 2
  br i1 %201, label %202, label %207

202:                                              ; preds = %195
  %203 = load i8*, i8** %6, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 -2
  store i8 125, i8* %204, align 1
  %205 = load i8*, i8** %6, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 -1
  store i8 0, i8* %206, align 1
  br label %207

207:                                              ; preds = %202, %195
  %208 = load i8*, i8** %7, align 8
  store i8* %208, i8** %3, align 8
  br label %209

209:                                              ; preds = %207, %15
  %210 = load i8*, i8** %3, align 8
  ret i8* %210
}

declare dso_local i8* @debug_getbuf(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @debugtext_tn(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
