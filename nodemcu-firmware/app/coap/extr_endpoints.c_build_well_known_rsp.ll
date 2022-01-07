; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_endpoints.c_build_well_known_rsp.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_endpoints.c_build_well_known_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32* }
%struct.TYPE_7__ = type { i32, i8** }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }

@endpoints = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c">;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_well_known_rsp(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @endpoints, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @memset(i8* %11, i32 0, i64 %12)
  %14 = load i64, i64* %7, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %214, %26, %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* null, %19
  br i1 %20, label %21, label %217

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* null, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 1
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %5, align 8
  br label %16

29:                                               ; preds = %21
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp eq %struct.TYPE_6__* null, %32
  br i1 %33, label %34, label %109

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = icmp slt i64 0, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @strncat(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @strncat(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %88, %44
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %50
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @strncat(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %7, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @strncat(i8* %64, i8* %73, i64 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strlen(i8* %84)
  %86 = load i64, i64* %7, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %58
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %50

91:                                               ; preds = %50
  %92 = load i8*, i8** %3, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @strncat(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 %93)
  %95 = load i64, i64* %7, align 8
  %96 = sub nsw i64 %95, 2
  store i64 %96, i64* %7, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @strncat(i8* %97, i8* %100, i64 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @strlen(i8* %105)
  %107 = load i64, i64* %7, align 8
  %108 = sub nsw i64 %107, %106
  store i64 %108, i64* %7, align 8
  br label %214

109:                                              ; preds = %29
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %8, align 8
  br label %115

115:                                              ; preds = %175, %109
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = icmp ne %struct.TYPE_8__* null, %116
  br i1 %117, label %118, label %213

118:                                              ; preds = %115
  %119 = load i8*, i8** %3, align 8
  %120 = call i64 @strlen(i8* %119)
  %121 = icmp slt i64 0, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i8*, i8** %3, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @strncat(i8* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %124)
  %126 = load i64, i64* %7, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* %7, align 8
  br label %128

128:                                              ; preds = %122, %118
  %129 = load i8*, i8** %3, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i32 @strncat(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %130)
  %132 = load i64, i64* %7, align 8
  %133 = add nsw i64 %132, -1
  store i64 %133, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %172, %128
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %135, %140
  br i1 %141, label %142, label %175

142:                                              ; preds = %134
  %143 = load i8*, i8** %3, align 8
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @strncat(i8* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %144)
  %146 = load i64, i64* %7, align 8
  %147 = add nsw i64 %146, -1
  store i64 %147, i64* %7, align 8
  %148 = load i8*, i8** %3, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i8**, i8*** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @strncat(i8* %148, i8* %157, i64 %158)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i8**, i8*** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i64 @strlen(i8* %168)
  %170 = load i64, i64* %7, align 8
  %171 = sub nsw i64 %170, %169
  store i64 %171, i64* %7, align 8
  br label %172

172:                                              ; preds = %142
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %134

175:                                              ; preds = %134
  %176 = load i8*, i8** %3, align 8
  %177 = load i64, i64* %7, align 8
  %178 = call i32 @strncat(i8* %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 %177)
  %179 = load i64, i64* %7, align 8
  %180 = add nsw i64 %179, -1
  store i64 %180, i64* %7, align 8
  %181 = load i8*, i8** %3, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i64, i64* %7, align 8
  %186 = call i32 @strncat(i8* %181, i8* %184, i64 %185)
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @strlen(i8* %189)
  %191 = load i64, i64* %7, align 8
  %192 = sub nsw i64 %191, %190
  store i64 %192, i64* %7, align 8
  %193 = load i8*, i8** %3, align 8
  %194 = load i64, i64* %7, align 8
  %195 = call i32 @strncat(i8* %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 %194)
  %196 = load i64, i64* %7, align 8
  %197 = sub nsw i64 %196, 2
  store i64 %197, i64* %7, align 8
  %198 = load i8*, i8** %3, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load i64, i64* %7, align 8
  %203 = call i32 @strncat(i8* %198, i8* %201, i64 %202)
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i64 @strlen(i8* %206)
  %208 = load i64, i64* %7, align 8
  %209 = sub nsw i64 %208, %207
  store i64 %209, i64* %7, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  store %struct.TYPE_8__* %212, %struct.TYPE_8__** %8, align 8
  br label %115

213:                                              ; preds = %115
  br label %214

214:                                              ; preds = %213, %91
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 1
  store %struct.TYPE_9__* %216, %struct.TYPE_9__** %5, align 8
  br label %16

217:                                              ; preds = %16
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
