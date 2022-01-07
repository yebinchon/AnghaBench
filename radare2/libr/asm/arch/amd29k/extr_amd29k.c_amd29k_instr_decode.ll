; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/amd29k/extr_amd29k.c_amd29k_instr_decode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/amd29k/extr_amd29k.c_amd29k_instr_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i8*, i32, i32 (%struct.TYPE_10__*, i32*)* }
%struct.TYPE_10__ = type { i8*, i32 }

@CPU_29000 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@R_ANAL_OP_TYPE_NOP = common dso_local global i32 0, align 4
@N_AMD29K_INSTRUCTIONS = common dso_local global i32 0, align 4
@amd29k_instructions = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd29k_instr_decode(i32* %0, i32 %1, %struct.TYPE_10__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %17, %14, %4
  store i32 0, i32* %5, align 4
  br label %193

28:                                               ; preds = %23, %20
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** @CPU_29000, align 8
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 112
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 64
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @decode_none(%struct.TYPE_10__* %54, i32* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %58, align 8
  %59 = load i32, i32* @R_ANAL_OP_TYPE_NOP, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  store i32 1, i32* %5, align 4
  br label %193

62:                                               ; preds = %48, %43, %38, %33
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %189, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @N_AMD29K_INSTRUCTIONS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %192

67:                                               ; preds = %63
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** @amd29k_instructions, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %70
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %11, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 42
  br i1 %78, label %79, label %104

79:                                               ; preds = %67
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %79
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  %90 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 %90(%struct.TYPE_10__* %91, i32* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  store i32 1, i32* %5, align 4
  br label %193

104:                                              ; preds = %79, %67
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 42
  br i1 %111, label %112, label %145

112:                                              ; preds = %104
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 3
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 48
  br i1 %119, label %120, label %145

120:                                              ; preds = %112
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %120
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 4
  %131 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %130, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 %131(%struct.TYPE_10__* %132, i32* %133)
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  store i32 1, i32* %5, align 4
  br label %193

145:                                              ; preds = %120, %112, %104
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 42
  br i1 %152, label %153, label %186

153:                                              ; preds = %145
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 3
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 53
  br i1 %160, label %161, label %186

161:                                              ; preds = %153
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32*, i32** %6, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %164, %167
  br i1 %168, label %169, label %186

169:                                              ; preds = %161
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 4
  %172 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %171, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 %172(%struct.TYPE_10__* %173, i32* %174)
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  store i8* %178, i8** %180, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  store i32 1, i32* %5, align 4
  br label %193

186:                                              ; preds = %161, %153, %145
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %63

192:                                              ; preds = %63
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %192, %169, %128, %87, %53, %27
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @decode_none(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
