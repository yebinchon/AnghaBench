; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_resolveP2Values.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_resolveP2Values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@sqlite3OpcodeProperty = common dso_local global i32* null, align 8
@OP_Function = common dso_local global i64 0, align 8
@OP_AggStep = common dso_local global i64 0, align 8
@OP_Transaction = common dso_local global i64 0, align 8
@OP_Vacuum = common dso_local global i64 0, align 8
@OP_VUpdate = common dso_local global i64 0, align 8
@OP_VFilter = common dso_local global i64 0, align 8
@OP_Integer = common dso_local global i64 0, align 8
@OP_Next = common dso_local global i64 0, align 8
@OP_SorterNext = common dso_local global i64 0, align 8
@sqlite3BtreeNext = common dso_local global i32 0, align 4
@P4_ADVANCE = common dso_local global i8* null, align 8
@OP_Prev = common dso_local global i64 0, align 8
@sqlite3BtreePrevious = common dso_local global i32 0, align 4
@OPFLG_JUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @resolveP2Values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolveP2Values(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %185, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %190

28:                                               ; preds = %25
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i32*, i32** @sqlite3OpcodeProperty, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @OP_Function, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %28
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @OP_AggStep, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41, %28
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %45
  br label %151

56:                                               ; preds = %41
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @OP_Transaction, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60, %56
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @OP_Vacuum, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %60
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  br label %150

72:                                               ; preds = %65
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @OP_VUpdate, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %76
  br label %149

87:                                               ; preds = %72
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @OP_VFilter, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %118

91:                                               ; preds = %87
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %94, %95
  %97 = icmp sge i32 %96, 3
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 -1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @OP_Integer, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 -1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %91
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %91
  br label %148

118:                                              ; preds = %87
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* @OP_Next, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @OP_SorterNext, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122, %118
  %127 = load i32, i32* @sqlite3BtreeNext, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load i8*, i8** @P4_ADVANCE, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 5
  store i8* %131, i8** %133, align 8
  br label %147

134:                                              ; preds = %122
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* @OP_Prev, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load i32, i32* @sqlite3BtreePrevious, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load i8*, i8** @P4_ADVANCE, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %138, %134
  br label %147

147:                                              ; preds = %146, %126
  br label %148

148:                                              ; preds = %147, %117
  br label %149

149:                                              ; preds = %148, %86
  br label %150

150:                                              ; preds = %149, %69
  br label %151

151:                                              ; preds = %150, %55
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @OPFLG_JUMP, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %184

158:                                              ; preds = %151
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %184

163:                                              ; preds = %158
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 -1, %166
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load i32*, i32** %8, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 -1, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %174, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %163, %158, %151
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %5, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 1
  store %struct.TYPE_7__* %189, %struct.TYPE_7__** %7, align 8
  br label %25

190:                                              ; preds = %25
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @sqlite3DbFree(i32 %193, i32* %196)
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  store i32* null, i32** %199, align 8
  %200 = load i32, i32* %6, align 4
  %201 = load i32*, i32** %4, align 8
  store i32 %200, i32* %201, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3DbFree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
