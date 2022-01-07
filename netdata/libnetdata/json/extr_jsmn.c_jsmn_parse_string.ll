; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/json/extr_jsmn.c_jsmn_parse_string.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/json/extr_jsmn.c_jsmn_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4
@JSMN_STRING = common dso_local global i32 0, align 4
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@JSMN_ERROR_PART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i64, %struct.TYPE_9__*, i64)* @jsmn_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsmn_parse_string(%struct.TYPE_10__* %0, i8* %1, i64 %2, %struct.TYPE_9__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %201, %5
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %30, %23
  %41 = phi i1 [ false, %23 ], [ %39, %30 ]
  br i1 %41, label %42, label %206

42:                                               ; preds = %40
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %14, align 1
  %50 = load i8, i8* %14, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 34
  br i1 %52, label %53, label %78

53:                                               ; preds = %42
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = icmp eq %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %211

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call %struct.TYPE_9__* @jsmn_alloc_token(%struct.TYPE_10__* %58, %struct.TYPE_9__* %59, i64 %60)
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %12, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = icmp eq %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  store i32 %68, i32* %6, align 4
  br label %211

69:                                               ; preds = %57
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %71 = load i32, i32* @JSMN_STRING, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @jsmn_fill_token(%struct.TYPE_9__* %70, i32 %71, i32 %73, i32 %76)
  store i32 0, i32* %6, align 4
  br label %211

78:                                               ; preds = %42
  %79 = load i8, i8* %14, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 92
  br i1 %81, label %82, label %200

82:                                               ; preds = %78
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  switch i32 %94, label %194 [
    i32 34, label %95
    i32 47, label %95
    i32 92, label %95
    i32 98, label %95
    i32 102, label %95
    i32 114, label %95
    i32 110, label %95
    i32 116, label %95
    i32 117, label %96
  ]

95:                                               ; preds = %82, %82, %82, %82, %82, %82, %82, %82
  br label %199

96:                                               ; preds = %82
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %186, %96
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 4
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %104, %101
  %115 = phi i1 [ false, %101 ], [ %113, %104 ]
  br i1 %115, label %116, label %189

116:                                              ; preds = %114
  %117 = load i8*, i8** %8, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %117, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sge i32 %124, 48
  br i1 %125, label %126, label %136

126:                                              ; preds = %116
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %127, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp sle i32 %134, 57
  br i1 %135, label %181, label %136

136:                                              ; preds = %126, %116
  %137 = load i8*, i8** %8, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %137, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp sge i32 %144, 65
  br i1 %145, label %146, label %156

146:                                              ; preds = %136
  %147 = load i8*, i8** %8, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %147, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp sle i32 %154, 70
  br i1 %155, label %181, label %156

156:                                              ; preds = %146, %136
  %157 = load i8*, i8** %8, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %157, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp sge i32 %164, 97
  br i1 %165, label %166, label %176

166:                                              ; preds = %156
  %167 = load i8*, i8** %8, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp sle i32 %174, 102
  br i1 %175, label %181, label %176

176:                                              ; preds = %166, %156
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %180, i32* %6, align 4
  br label %211

181:                                              ; preds = %166, %146, %126
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %101

189:                                              ; preds = %114
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %191, align 4
  br label %199

194:                                              ; preds = %82
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %198, i32* %6, align 4
  br label %211

199:                                              ; preds = %189, %95
  br label %200

200:                                              ; preds = %199, %78
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  br label %23

206:                                              ; preds = %40
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* @JSMN_ERROR_PART, align 4
  store i32 %210, i32* %6, align 4
  br label %211

211:                                              ; preds = %206, %194, %176, %69, %64, %56
  %212 = load i32, i32* %6, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_9__* @jsmn_alloc_token(%struct.TYPE_10__*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @jsmn_fill_token(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
