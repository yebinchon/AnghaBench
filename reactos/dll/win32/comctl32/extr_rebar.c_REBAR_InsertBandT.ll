; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_InsertBandT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_InsertBandT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_21__ = type { i64, i32, i64 }
%struct.TYPE_20__ = type { i64, i64, i32, i32, i32, i32, i64, i32, i32 }

@REBARBANDINFOA_V3_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"insert band at %d (bUnicode=%d)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"index %d!\0A\00", align 1
@CLR_NONE = common dso_local global i64 0, align 8
@REBARBANDINFOA_V6_SIZE = common dso_local global i64 0, align 8
@RBBS_VARIABLEHEIGHT = common dso_local global i32 0, align 4
@RBBIM_TEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, %struct.TYPE_21__*, i64)* @REBAR_InsertBandT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_InsertBandT(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_21__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %12 = icmp ne %struct.TYPE_21__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REBARBANDINFOA_V3_SIZE, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %184

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %23)
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %26 = call i32 @REBAR_DumpBandInfo(%struct.TYPE_21__* %25)
  %27 = call %struct.TYPE_20__* @Alloc(i32 48)
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %10, align 8
  %28 = icmp ne %struct.TYPE_20__* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %184

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %31
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %50 = call i32 @DPA_InsertPtr(i32 %47, i32 %48, %struct.TYPE_20__* %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %54 = call i32 @Free(%struct.TYPE_20__* %53)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %5, align 4
  br label %184

56:                                               ; preds = %44
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %64 = call i32 @memset(%struct.TYPE_20__* %63, i32 0, i32 48)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CLR_NONE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  br label %78

74:                                               ; preds = %56
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i64 [ %73, %70 ], [ %77, %74 ]
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CLR_NONE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  br label %95

91:                                               ; preds = %78
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i64 [ %90, %87 ], [ %94, %91 ]
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 2
  store i32 -1, i32* %100, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %106 = call i32 @REBAR_CommonSetupBand(i32 %103, %struct.TYPE_21__* %104, %struct.TYPE_20__* %105)
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @REBARBANDINFOA_V6_SIZE, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %119, label %112

112:                                              ; preds = %95
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @RBBS_VARIABLEHEIGHT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %112, %95
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 8
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 4
  store i32 2147483647, i32* %126, align 8
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 6
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %119, %112
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @RBBIM_TEXT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %160

136:                                              ; preds = %129
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %136
  %142 = load i64, i64* %9, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @Str_SetPtrW(i32* %146, i64 %149)
  br label %159

151:                                              ; preds = %141
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = call i32 @Str_SetPtrAtoW(i32* %153, i32 %157)
  br label %159

159:                                              ; preds = %151, %144
  br label %160

160:                                              ; preds = %159, %136, %129
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %163 = call i32 @REBAR_ValidateBand(%struct.TYPE_19__* %161, %struct.TYPE_20__* %162)
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %168, label %173

168:                                              ; preds = %160
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %171 = call %struct.TYPE_20__* @REBAR_GetBand(%struct.TYPE_19__* %170, i32 0)
  %172 = call i32 @REBAR_ValidateBand(%struct.TYPE_19__* %169, %struct.TYPE_20__* %171)
  br label %173

173:                                              ; preds = %168, %160
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = call i32 @REBAR_DumpBand(%struct.TYPE_19__* %174)
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %177 = call i32 @REBAR_Layout(%struct.TYPE_19__* %176)
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @TRUE, align 4
  %182 = call i32 @InvalidateRect(i32 %180, i32* null, i32 %181)
  %183 = load i32, i32* @TRUE, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %173, %52, %29, %19
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @REBAR_DumpBandInfo(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @Alloc(i32) #1

declare dso_local i32 @DPA_InsertPtr(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @Free(%struct.TYPE_20__*) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @REBAR_CommonSetupBand(i32, %struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @Str_SetPtrW(i32*, i64) #1

declare dso_local i32 @Str_SetPtrAtoW(i32*, i32) #1

declare dso_local i32 @REBAR_ValidateBand(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @REBAR_GetBand(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @REBAR_DumpBand(%struct.TYPE_19__*) #1

declare dso_local i32 @REBAR_Layout(%struct.TYPE_19__*) #1

declare dso_local i32 @InvalidateRect(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
