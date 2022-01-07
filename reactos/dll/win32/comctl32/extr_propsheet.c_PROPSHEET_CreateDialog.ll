; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_CreateDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_CreateDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 (i32, i32, i32)* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@IDD_PROPSHEET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@INTRNL_ANY_WIZARD = common dso_local global i32 0, align 4
@IDD_WIZARD = common dso_local global i32 0, align 4
@COMCTL32_hModule = common dso_local global i32 0, align 4
@RT_DIALOG = common dso_local global i64 0, align 8
@PSH_NOCONTEXTHELP = common dso_local global i32 0, align 4
@DS_CONTEXTHELP = common dso_local global i32 0, align 4
@PSH_WIZARDCONTEXTHELP = common dso_local global i32 0, align 4
@PSCB_PRECREATE = common dso_local global i32 0, align 4
@PROPSHEET_DialogProc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @PROPSHEET_CreateDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PROPSHEET_CreateDialog(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* @IDD_PROPSHEET, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @INTRNL_ANY_WIZARD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @IDD_WIZARD, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32, i32* @COMCTL32_hModule, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @MAKEINTRESOURCEW(i32 %29)
  %31 = load i64, i64* @RT_DIALOG, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @FindResourceW(i32 %28, i32 %30, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %196

36:                                               ; preds = %27
  br label %47

37:                                               ; preds = %22
  %38 = load i32, i32* @COMCTL32_hModule, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @MAKEINTRESOURCEA(i32 %39)
  %41 = load i64, i64* @RT_DIALOG, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @FindResourceA(i32 %38, i32 %40, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %196

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, i32* @COMCTL32_hModule, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @LoadResource(i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %196

53:                                               ; preds = %47
  %54 = load i32, i32* @COMCTL32_hModule, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @SizeofResource(i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 2, %57
  %59 = call i64 @Alloc(i32 %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  store i32 -1, i32* %2, align 4
  br label %196

63:                                               ; preds = %53
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @memcpy(i64 %64, i32 %65, i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PSH_NOCONTEXTHELP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %63
  %76 = load i64, i64* %6, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_9__*
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 65535
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load i32, i32* @DS_CONTEXTHELP, align 4
  %83 = xor i32 %82, -1
  %84 = load i64, i64* %6, align 8
  %85 = inttoptr i64 %84 to %struct.TYPE_9__*
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %83
  store i32 %88, i32* %86, align 4
  br label %97

89:                                               ; preds = %75
  %90 = load i32, i32* @DS_CONTEXTHELP, align 4
  %91 = xor i32 %90, -1
  %92 = load i64, i64* %6, align 8
  %93 = inttoptr i64 %92 to %struct.TYPE_10__*
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %91
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %89, %81
  br label %98

98:                                               ; preds = %97, %63
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @INTRNL_ANY_WIZARD, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %98
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @PSH_WIZARDCONTEXTHELP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %106
  %115 = load i64, i64* %6, align 8
  %116 = inttoptr i64 %115 to %struct.TYPE_9__*
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 65535
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load i32, i32* @DS_CONTEXTHELP, align 4
  %122 = load i64, i64* %6, align 8
  %123 = inttoptr i64 %122 to %struct.TYPE_9__*
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 4
  br label %134

127:                                              ; preds = %114
  %128 = load i32, i32* @DS_CONTEXTHELP, align 4
  %129 = load i64, i64* %6, align 8
  %130 = inttoptr i64 %129 to %struct.TYPE_10__*
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %128
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %127, %120
  br label %135

135:                                              ; preds = %134, %106, %98
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  %144 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %143, align 8
  %145 = load i32, i32* @PSCB_PRECREATE, align 4
  %146 = load i64, i64* %6, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 %144(i32 0, i32 %145, i32 %147)
  br label %149

149:                                              ; preds = %140, %135
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %149
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @PROPSHEET_DialogProc, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %166 = ptrtoint %struct.TYPE_8__* %165 to i32
  %167 = call i64 @CreateDialogIndirectParamW(i32 %158, i64 %159, i32 %163, i32 %164, i32 %166)
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %4, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %154
  store i32 -1, i32* %4, align 4
  br label %172

172:                                              ; preds = %171, %154
  br label %192

173:                                              ; preds = %149
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @PROPSHEET_DialogProc, align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %185 = ptrtoint %struct.TYPE_8__* %184 to i32
  %186 = call i64 @CreateDialogIndirectParamA(i32 %177, i64 %178, i32 %182, i32 %183, i32 %185)
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %173
  store i32 -1, i32* %4, align 4
  br label %191

191:                                              ; preds = %190, %173
  br label %192

192:                                              ; preds = %191, %172
  %193 = load i64, i64* %6, align 8
  %194 = call i32 @Free(i64 %193)
  %195 = load i32, i32* %4, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %192, %62, %52, %45, %35
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @FindResourceW(i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @FindResourceA(i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEA(i32) #1

declare dso_local i32 @LoadResource(i32, i32) #1

declare dso_local i32 @SizeofResource(i32, i32) #1

declare dso_local i64 @Alloc(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i64 @CreateDialogIndirectParamW(i32, i64, i32, i32, i32) #1

declare dso_local i64 @CreateDialogIndirectParamA(i32, i64, i32, i32, i32) #1

declare dso_local i32 @Free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
