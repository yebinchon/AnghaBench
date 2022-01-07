; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_avr_op_analyze.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_avr_op_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 (i32*, %struct.TYPE_8__*, i32*, i32, i32*, i32*)*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@UT64_MAX = common dso_local global i8* null, align 8
@opcodes = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@R_ANAL_OP_TYPE_UNK = common dso_local global i32 0, align 4
@R_ANAL_OP_FAMILY_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"1,$\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, %struct.TYPE_8__*, i8*, i32*, i32, i32*)* @avr_op_analyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @avr_op_analyze(i32* %0, %struct.TYPE_8__* %1, i8* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %187

21:                                               ; preds = %6
  %22 = load i32*, i32** %11, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = call i32 @memset(%struct.TYPE_8__* %30, i32 0, i32 64)
  %32 = load i8*, i8** @UT64_MAX, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @UT64_MAX, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @UT64_MAX, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = call i32 @r_strbuf_init(i32* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @opcodes, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %14, align 8
  br label %45

45:                                               ; preds = %143, %21
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = load i32 (i32*, %struct.TYPE_8__*, i32*, i32, i32*, i32*)*, i32 (i32*, %struct.TYPE_8__*, i32*, i32, i32*, i32*)** %47, align 8
  %49 = icmp ne i32 (i32*, %struct.TYPE_8__*, i32*, i32, i32*, i32*)* %48, null
  br i1 %49, label %50, label %146

50:                                               ; preds = %45
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %51, %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %142

60:                                               ; preds = %50
  store i32 0, i32* %16, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** @UT64_MAX, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 6
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @UT64_MAX, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 7
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = call i32 @r_strbuf_setf(i32* %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  %90 = load i32 (i32*, %struct.TYPE_8__*, i32*, i32, i32*, i32*)*, i32 (i32*, %struct.TYPE_8__*, i32*, i32, i32*, i32*)** %89, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 %90(i32* %91, %struct.TYPE_8__* %92, i32* %93, i32 %94, i32* %16, i32* %95)
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %60
  br label %156

100:                                              ; preds = %60
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  store i32 2, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @R_ANAL_OP_TYPE_UNK, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = call i8* @r_strbuf_get(i32* %118)
  store i8* %119, i8** %17, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %140

122:                                              ; preds = %108
  %123 = load i8*, i8** %17, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load i8*, i8** %17, align 8
  %128 = call i32 @strlen(i8* %127)
  %129 = sub nsw i32 %128, 1
  %130 = load i8*, i8** %17, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %17, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 44
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = load i8*, i8** %17, align 8
  store i8 0, i8* %138, align 1
  br label %139

139:                                              ; preds = %137, %126
  br label %140

140:                                              ; preds = %139, %122, %108
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %7, align 8
  br label %187

142:                                              ; preds = %50
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 1
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %14, align 8
  br label %45

146:                                              ; preds = %45
  %147 = load i32, i32* %15, align 4
  %148 = and i32 %147, 65280
  %149 = icmp eq i32 %148, 65280
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32, i32* %15, align 4
  %152 = and i32 %151, 15
  %153 = icmp sgt i32 %152, 7
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %156

155:                                              ; preds = %150, %146
  br label %156

156:                                              ; preds = %155, %154, %99
  %157 = load i32, i32* @R_ANAL_OP_FAMILY_UNKNOWN, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 10
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @R_ANAL_OP_TYPE_UNK, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 9
  store i32 %160, i32* %162, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 8
  store i8* %163, i8** %165, align 8
  %166 = load i8*, i8** @UT64_MAX, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 7
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** @UT64_MAX, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 6
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** @UT64_MAX, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 5
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @UT64_MAX, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 4
  store i8* %175, i8** %177, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  store i32 1, i32* %179, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i32 2, i32* %183, align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 3
  %186 = call i32 @r_strbuf_set(i32* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %187

187:                                              ; preds = %156, %140, %20
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %188
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @r_strbuf_init(i32*) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*) #1

declare dso_local i8* @r_strbuf_get(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_strbuf_set(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
