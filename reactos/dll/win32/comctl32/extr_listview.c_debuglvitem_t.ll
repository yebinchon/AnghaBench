; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_debuglvitem_t.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_debuglvitem_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"{iItem=%d, iSubItem=%d, \00", align 1
@LVIF_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"state=%x, stateMask=%x, \00", align 1
@LVIF_TEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"pszText=%s, cchTextMax=%d, \00", align 1
@LVIF_IMAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"iImage=%d, \00", align 1
@LVIF_PARAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"lParam=%lx, \00", align 1
@LVIF_INDENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"iIndent=%d, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32)* @debuglvitem_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debuglvitem_t(%struct.TYPE_3__* %0, i32 %1) #0 {
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
  br label %192

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %172

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LVIF_STATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %29
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %44, i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %172

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @LVIF_TEXT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %58
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i8* @debugtext_tn(i32 %77, i32 %78, i32 80)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %73, i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 %82)
  store i32 %83, i32* %8, align 4
  br label %85

84:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %172

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @LVIF_IMAGE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %89
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %104, i32 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  store i32 %109, i32* %8, align 4
  br label %111

110:                                              ; preds = %89
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %103
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %172

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %6, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @LVIF_PARAM, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %115
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %130, i32 %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  store i32 %135, i32* %8, align 4
  br label %137

136:                                              ; preds = %115
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %136, %129
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %172

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8* %145, i8** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = sub nsw i32 %147, %146
  store i32 %148, i32* %9, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @LVIF_INDENT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %141
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %156, i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  store i32 %161, i32* %8, align 4
  br label %163

162:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %162, %155
  %164 = load i32, i32* %8, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %172

167:                                              ; preds = %163
  %168 = load i32, i32* %8, align 4
  %169 = load i8*, i8** %6, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %6, align 8
  br label %178

172:                                              ; preds = %166, %140, %114, %88, %57, %28
  %173 = load i8*, i8** %7, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 @strlen(i8* %174)
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8* %177, i8** %6, align 8
  br label %178

178:                                              ; preds = %172, %167
  %179 = load i8*, i8** %6, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = ptrtoint i8* %179 to i64
  %182 = ptrtoint i8* %180 to i64
  %183 = sub i64 %181, %182
  %184 = icmp sgt i64 %183, 2
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = load i8*, i8** %6, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 -2
  store i8 125, i8* %187, align 1
  %188 = load i8*, i8** %6, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 -1
  store i8 0, i8* %189, align 1
  br label %190

190:                                              ; preds = %185, %178
  %191 = load i8*, i8** %7, align 8
  store i8* %191, i8** %3, align 8
  br label %192

192:                                              ; preds = %190, %15
  %193 = load i8*, i8** %3, align 8
  ret i8* %193
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
