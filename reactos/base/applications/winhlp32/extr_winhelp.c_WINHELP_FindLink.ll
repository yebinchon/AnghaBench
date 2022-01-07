; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_winhelp.c_WINHELP_FindLink.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_winhelp.c_WINHELP_FindLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i16, i16 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }

@CTL_ID_TEXT = common dso_local global i32 0, align 4
@EM_CHARFROMPOS = common dso_local global i32 0, align 4
@EM_POSFROMCHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_9__*, i64)* @WINHELP_FindLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @WINHELP_FindLink(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__, align 2
  %8 = alloca %struct.TYPE_10__, align 2
  %9 = alloca %struct.TYPE_10__, align 2
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %163

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @LOWORD(i64 %18)
  %20 = trunc i64 %19 to i16
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i16 %20, i16* %21, align 2
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @HIWORD(i64 %22)
  %24 = trunc i64 %23 to i16
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i16 %24, i16* %25, align 2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CTL_ID_TEXT, align 4
  %30 = call i32 @GetDlgItem(i32 %28, i32 %29)
  %31 = load i32, i32* @EM_CHARFROMPOS, align 4
  %32 = ptrtoint %struct.TYPE_10__* %7 to i64
  %33 = call i64 @SendMessageW(i32 %30, i32 %31, i64 0, i64 %32)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %6, align 8
  br label %39

39:                                               ; preds = %157, %17
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %161

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %156

48:                                               ; preds = %42
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %49, %52
  br i1 %53, label %54, label %156

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CTL_ID_TEXT, align 4
  %59 = call i32 @GetDlgItem(i32 %57, i32 %58)
  %60 = load i32, i32* @EM_POSFROMCHAR, align 4
  %61 = ptrtoint %struct.TYPE_10__* %8 to i64
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @SendMessageW(i32 %59, i32 %60, i64 %61, i64 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CTL_ID_TEXT, align 4
  %68 = call i32 @GetDlgItem(i32 %66, i32 %67)
  %69 = load i32, i32* @EM_POSFROMCHAR, align 4
  %70 = ptrtoint %struct.TYPE_10__* %9 to i64
  %71 = load i64, i64* %10, align 8
  %72 = add nsw i64 %71, 1
  %73 = call i64 @SendMessageW(i32 %68, i32 %69, i64 %70, i64 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %138

78:                                               ; preds = %54
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = bitcast %struct.TYPE_11__* %79 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i64
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = icmp slt i64 %83, %90
  br i1 %91, label %136, label %92

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %97 = load i16, i16* %96, align 2
  %98 = sext i16 %97 to i64
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = icmp sge i64 %95, %106
  br i1 %107, label %136, label %108

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %110 = load i16, i16* %109, align 2
  %111 = sext i16 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %113 = load i16, i16* %112, align 2
  %114 = sext i16 %113 to i64
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = icmp slt i64 %111, %118
  br i1 %119, label %136, label %120

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %122 = load i16, i16* %121, align 2
  %123 = sext i16 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %125 = load i16, i16* %124, align 2
  %126 = sext i16 %125 to i64
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = icmp sge i64 %123, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %120, %108, %92, %78
  br label %157

137:                                              ; preds = %120
  br label %161

138:                                              ; preds = %54
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %140 = load i16, i16* %139, align 2
  %141 = sext i16 %140 to i32
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %143 = load i16, i16* %142, align 2
  %144 = sext i16 %143 to i32
  %145 = icmp ne i32 %141, %144
  br i1 %145, label %154, label %146

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %148 = load i16, i16* %147, align 2
  %149 = sext i16 %148 to i32
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %151 = load i16, i16* %150, align 2
  %152 = sext i16 %151 to i32
  %153 = icmp sge i32 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146, %138
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  br label %155

155:                                              ; preds = %154, %146
  br label %161

156:                                              ; preds = %48, %42
  br label %157

157:                                              ; preds = %156, %136
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %6, align 8
  br label %39

161:                                              ; preds = %155, %137, %39
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %162, %struct.TYPE_11__** %3, align 8
  br label %163

163:                                              ; preds = %161, %16
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %164
}

declare dso_local i64 @LOWORD(i64) #1

declare dso_local i64 @HIWORD(i64) #1

declare dso_local i64 @SendMessageW(i32, i32, i64, i64) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
