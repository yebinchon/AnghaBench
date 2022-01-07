; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_help.c_OnTopicChange.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_help.c_OnTopicChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_23__*, %struct.TYPE_15__, i32*, i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_17__, %struct.TYPE_20__*, i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_20__ = type { i32*, i32* }
%struct.TYPE_19__ = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"No entries for this item!\0A\00", align 1
@LVM_DELETEALLITEMS = common dso_local global i32 0, align 4
@LVIF_TEXT = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@LVM_INSERTITEMW = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unhandled operation for this tab!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"No help file found for this item!\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"name %s loal %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*)* @OnTopicChange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnTopicChange(%struct.TYPE_22__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %20 = icmp ne %struct.TYPE_22__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %196

22:                                               ; preds = %18
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %179 [
    i32 130, label %26
    i32 129, label %54
    i32 128, label %165
  ]

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %9, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %7, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  br label %35

35:                                               ; preds = %49, %26
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %37 = icmp ne %struct.TYPE_23__* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %6, align 8
  br label %53

49:                                               ; preds = %38
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %9, align 8
  br label %35

53:                                               ; preds = %44, %35
  br label %181

54:                                               ; preds = %22
  %55 = load i8*, i8** %5, align 8
  %56 = bitcast i8* %55 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %11, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %196

63:                                               ; preds = %54
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %148

68:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @LVM_DELETEALLITEMS, align 4
  %74 = call i32 @SendMessageW(i32 %72, i32 %73, i32 0, i32 0)
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %138, %68
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %141

81:                                               ; preds = %75
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i64 %86
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %14, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %15, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %81
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32* @GetDocumentTitle(%struct.TYPE_14__* %98, i32* %101)
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  store i32* %102, i32** %104, align 8
  br label %105

105:                                              ; preds = %95, %81
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %15, align 8
  br label %114

114:                                              ; preds = %110, %105
  %115 = call i32 @memset(%struct.TYPE_19__* %13, i32 0, i32 32)
  %116 = load i32, i32* %12, align 4
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store i32 %116, i32* %117, align 8
  %118 = load i32, i32* @LVIF_TEXT, align 4
  %119 = load i32, i32* @LVIF_PARAM, align 4
  %120 = or i32 %118, %119
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %15, align 8
  %123 = call i32 @lstrlenW(i32* %122)
  %124 = add nsw i32 %123, 1
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 4
  store i32 %124, i32* %125, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  store i32* %126, i32** %127, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %129 = ptrtoint %struct.TYPE_20__* %128 to i32
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  store i32 %129, i32* %130, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @LVM_INSERTITEMW, align 4
  %136 = ptrtoint %struct.TYPE_19__* %13 to i32
  %137 = call i32 @SendMessageW(i32 %134, i32 %135, i32 0, i32 %136)
  br label %138

138:                                              ; preds = %114
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %75

141:                                              ; preds = %75
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @SW_SHOW, align 4
  %147 = call i32 @ShowWindow(i32 %145, i32 %146)
  store i32 0, i32* %3, align 4
  br label %196

148:                                              ; preds = %63
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %7, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  store i32* %160, i32** %8, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  store i32* %164, i32** %6, align 8
  br label %181

165:                                              ; preds = %22
  %166 = load i8*, i8** %5, align 8
  %167 = bitcast i8* %166 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %167, %struct.TYPE_18__** %10, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %7, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  store i32* %173, i32** %8, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %6, align 8
  br label %181

179:                                              ; preds = %22
  %180 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %196

181:                                              ; preds = %165, %148, %53
  %182 = load i32*, i32** %6, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %181
  %185 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %196

186:                                              ; preds = %181
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @debugstr_w(i32* %187)
  %189 = load i32*, i32** %8, align 8
  %190 = call i32 @debugstr_w(i32* %189)
  %191 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %188, i32 %190)
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = load i32*, i32** %8, align 8
  %195 = call i32 @NavigateToChm(%struct.TYPE_22__* %192, i32* %193, i32* %194)
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %186, %184, %179, %141, %61, %21
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32* @GetDocumentTitle(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @NavigateToChm(%struct.TYPE_22__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
