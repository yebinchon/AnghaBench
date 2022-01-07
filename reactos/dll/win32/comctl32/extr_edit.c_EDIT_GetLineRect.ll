; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_GetLineRect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_GetLineRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i16, i16, i64 }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32, i32, %struct.TYPE_9__*)* @EDIT_GetLineRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_GetLineRect(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ES_MULTILINE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %107

24:                                               ; preds = %5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %28, %38
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %24
  br label %199

48:                                               ; preds = %24
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 7
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %16, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %87

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %72, %54
  %63 = load i32, i32* %17, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i1 [ false, %62 ], [ %69, %65 ]
  br i1 %71, label %72, label %86

72:                                               ; preds = %70
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %16, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %17, align 4
  br label %62

86:                                               ; preds = %70
  br label %103

87:                                               ; preds = %48
  br label %88

88:                                               ; preds = %91, %87
  %89 = load i32, i32* %7, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %12, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  store %struct.TYPE_10__* %99, %struct.TYPE_10__** %16, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %7, align 4
  br label %88

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %86
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %11, align 8
  br label %117

107:                                              ; preds = %5
  store i32 0, i32* %12, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %11, align 8
  br label %117

117:                                              ; preds = %107, %103
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %120, %124
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %117
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i16, i16* %133, align 8
  %135 = sext i16 %134 to i32
  br label %146

136:                                              ; preds = %117
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_11__* %137, i32 %140, i32 %141)
  %143 = call i64 @LOWORD(i32 %142)
  %144 = trunc i64 %143 to i16
  %145 = sext i16 %144 to i32
  br label %146

146:                                              ; preds = %136, %130
  %147 = phi i32 [ %135, %130 ], [ %145, %136 ]
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i16, i16* %153, align 2
  %155 = sext i16 %154 to i32
  br label %166

156:                                              ; preds = %146
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* @TRUE, align 4
  %162 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_11__* %157, i32 %160, i32 %161)
  %163 = call i64 @LOWORD(i32 %162)
  %164 = trunc i64 %163 to i16
  %165 = sext i16 %164 to i32
  br label %166

166:                                              ; preds = %156, %150
  %167 = phi i32 [ %155, %150 ], [ %165, %156 ]
  store i32 %167, i32* %14, align 4
  %168 = load i64, i64* %11, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = load i64, i64* %11, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @FALSE, align 4
  %174 = call i32 @ScriptStringCPtoX(i64 %171, i32 %172, i32 %173, i32* %15)
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i16, i16* %177, align 8
  %179 = sext i16 %178 to i32
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %15, align 4
  br label %184

182:                                              ; preds = %166
  %183 = load i32, i32* %13, align 4
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %182, %170
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @max(i32 %185, i32 %186)
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @max(i32 %187, i32 %188)
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @min(i32 %192, i32 %193)
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @min(i32 %194, i32 %195)
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %184, %47
  ret void
}

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i32 @EDIT_EM_PosFromChar(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ScriptStringCPtoX(i64, i32, i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
