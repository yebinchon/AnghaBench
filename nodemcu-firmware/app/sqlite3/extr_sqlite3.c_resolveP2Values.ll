; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_resolveP2Values.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_resolveP2Values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i64 }

@SQLITE_MX_JUMP_OPCODE = common dso_local global i32 0, align 4
@OP_Integer = common dso_local global i32 0, align 4
@sqlite3BtreeNext = common dso_local global i32 0, align 4
@P4_ADVANCE = common dso_local global i8* null, align 8
@sqlite3BtreePrevious = common dso_local global i32 0, align 4
@sqlite3OpcodeProperty = common dso_local global i32* null, align 8
@OPFLG_JUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @resolveP2Values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolveP2Values(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %29
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %6, align 8
  br label %31

31:                                               ; preds = %2, %159
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SQLITE_MX_JUMP_OPCODE, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %152

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %115 [
    i32 131, label %41
    i32 140, label %50
    i32 133, label %50
    i32 139, label %53
    i32 128, label %53
    i32 138, label %53
    i32 129, label %58
    i32 130, label %69
    i32 137, label %99
    i32 136, label %99
    i32 132, label %99
    i32 135, label %107
    i32 134, label %107
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %37, %37, %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %115

53:                                               ; preds = %37, %37, %37
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %115

58:                                               ; preds = %37
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %58
  br label %115

69:                                               ; preds = %37
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = ptrtoint %struct.TYPE_9__* %70 to i64
  %75 = ptrtoint %struct.TYPE_9__* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 32
  %78 = icmp sge i64 %77, 3
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 -1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @OP_Integer, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 -1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %69
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %69
  br label %115

99:                                               ; preds = %37, %37, %37
  %100 = load i32, i32* @sqlite3BtreeNext, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load i8*, i8** @P4_ADVANCE, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  br label %115

107:                                              ; preds = %37, %37
  %108 = load i32, i32* @sqlite3BtreePrevious, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load i8*, i8** @P4_ADVANCE, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %37, %107, %99, %98, %68, %53, %50
  %116 = load i32*, i32** @sqlite3OpcodeProperty, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @OPFLG_JUMP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %115
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %126
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @ADDR(i32 %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %135, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32*, i32** %8, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @ADDR(i32 %145)
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %131, %126, %115
  br label %152

152:                                              ; preds = %151, %31
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 5
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = icmp eq %struct.TYPE_9__* %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %162

159:                                              ; preds = %152
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 -1
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %6, align 8
  br label %31

162:                                              ; preds = %158
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @sqlite3DbFree(i32 %165, i32* %168)
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32* null, i32** %171, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  store i64 0, i64* %173, align 8
  %174 = load i32, i32* %5, align 4
  %175 = load i32*, i32** %4, align 8
  store i32 %174, i32* %175, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %162
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @DbMaskAllZero(i32 %183)
  %185 = icmp ne i64 %184, 0
  br label %186

186:                                              ; preds = %180, %162
  %187 = phi i1 [ true, %162 ], [ %185, %180 ]
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ADDR(i32) #1

declare dso_local i32 @sqlite3DbFree(i32, i32*) #1

declare dso_local i64 @DbMaskAllZero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
