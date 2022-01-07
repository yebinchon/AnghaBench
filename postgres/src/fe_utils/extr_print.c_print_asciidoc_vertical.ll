; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_asciidoc_vertical.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_asciidoc_vertical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8**, i32, i8**, i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i16, i32, i64, i64 }

@cancel_pressed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"[cols=\22h,l\22\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c",frame=\22none\22,grid=\22none\22\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c",frame=\22none\22\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c",frame=\22all\22,grid=\22all\22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"|====\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"2+^|Record %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"2+|\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"<l|\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" %s|\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c">l\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"<l\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"\0A....\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"....\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @print_asciidoc_vertical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_asciidoc_vertical(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 4
  store i16 %20, i16* %6, align 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* @cancel_pressed, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %212

31:                                               ; preds = %2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %31
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @fputs(i8* %53, i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %56)
  br label %58

58:                                               ; preds = %48, %43, %38
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %59)
  %61 = load i16, i16* %6, align 2
  %62 = zext i16 %61 to i32
  switch i32 %62, label %72 [
    i32 0, label %63
    i32 1, label %66
    i32 2, label %69
  ]

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %64)
  br label %72

66:                                               ; preds = %58
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %67)
  br label %72

69:                                               ; preds = %58
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %70)
  br label %72

72:                                               ; preds = %58, %69, %66, %63
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %75)
  br label %77

77:                                               ; preds = %72, %31
  store i32 0, i32* %8, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  store i8** %80, i8*** %9, align 8
  br label %81

81:                                               ; preds = %162, %77
  %82 = load i8**, i8*** %9, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %167

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = urem i32 %86, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = load i64, i64* @cancel_pressed, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %167

96:                                               ; preds = %92
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i32*, i32** %4, align 8
  %101 = load i64, i64* %7, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %7, align 8
  %103 = inttoptr i64 %101 to i8*
  %104 = call i32 @fprintf(i32* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  br label %108

105:                                              ; preds = %96
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* %106)
  br label %108

108:                                              ; preds = %105, %99
  br label %109

109:                                              ; preds = %108, %85
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = urem i32 %115, %118
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %114, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @asciidoc_escaped_print(i8* %122, i32* %123)
  %125 = load i32*, i32** %4, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = urem i32 %129, %132
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %128, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 114
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)
  %141 = call i32 @fprintf(i32* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %140)
  %142 = load i8**, i8*** %9, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = load i8**, i8*** %9, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strspn(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %109
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32* %152)
  br label %159

154:                                              ; preds = %109
  %155 = load i8**, i8*** %9, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @asciidoc_escaped_print(i8* %156, i32* %157)
  br label %159

159:                                              ; preds = %154, %151
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %160)
  br label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %8, align 4
  %165 = load i8**, i8*** %9, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i32 1
  store i8** %166, i8*** %9, align 8
  br label %81

167:                                              ; preds = %95, %81
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %168)
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 6
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %212

176:                                              ; preds = %167
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %211, label %179

179:                                              ; preds = %176
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = icmp ne %struct.TYPE_6__* %182, null
  br i1 %183, label %184, label %211

184:                                              ; preds = %179
  %185 = load i64, i64* @cancel_pressed, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %211, label %187

187:                                              ; preds = %184
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32* %188)
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  store %struct.TYPE_6__* %192, %struct.TYPE_6__** %10, align 8
  br label %193

193:                                              ; preds = %204, %187
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %195 = icmp ne %struct.TYPE_6__* %194, null
  br i1 %195, label %196, label %208

196:                                              ; preds = %193
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @fputs(i8* %199, i32* %200)
  %202 = load i32*, i32** %4, align 8
  %203 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %202)
  br label %204

204:                                              ; preds = %196
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  store %struct.TYPE_6__* %207, %struct.TYPE_6__** %10, align 8
  br label %193

208:                                              ; preds = %193
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32* %209)
  br label %211

211:                                              ; preds = %208, %184, %179, %176
  br label %212

212:                                              ; preds = %30, %211, %167
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @asciidoc_escaped_print(i8*, i32*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
