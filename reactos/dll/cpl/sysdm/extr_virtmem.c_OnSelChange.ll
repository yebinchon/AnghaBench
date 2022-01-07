; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_virtmem.c_OnSelChange.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_virtmem.c_OnSelChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@IDC_PAGEFILELIST = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@IDC_DRIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%u MB\00", align 1
@IDC_SPACEAVAIL = common dso_local global i32 0, align 4
@IDC_MAXSIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_INITIALSIZE = common dso_local global i32 0, align 4
@IDC_NOPAGEFILE = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@IDC_SYSMANSIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_CUSTOM = common dso_local global i32 0, align 4
@IDC_MINIMUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"16 MB\00", align 1
@IDC_RECOMMENDED = common dso_local global i32 0, align 4
@IDC_CURRENT = common dso_local global i32 0, align 4
@PageFileSizeMb = common dso_local global i32 0, align 4
@i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*)* @OnSelChange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnSelChange(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @IDC_PAGEFILELIST, align 4
  %12 = load i32, i32* @LB_GETCURSEL, align 4
  %13 = call i64 @SendDlgItemMessage(i32 %10, i32 %11, i32 %12, i32 0, i32 0)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp uge i64 %14, 0
  br i1 %15, label %16, label %216

16:                                               ; preds = %2
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %216

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @IDC_DRIVE, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @SetDlgItemText(i32 %23, i32 %24, i32* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @GetDiskFreeSpaceEx(i32* %39, i32* null, i32* null, %struct.TYPE_9__* %7)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 1048576
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %45, i32* %51, align 8
  %52 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %53 = call i32* @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @_stprintf(i32* %52, i32* %53, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @IDC_SPACEAVAIL, align 4
  %64 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %65 = call i32 @SetDlgItemText(i32 %62, i32 %63, i32* %64)
  br label %66

66:                                               ; preds = %42, %22
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %105

75:                                               ; preds = %66
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %105

84:                                               ; preds = %75
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @IDC_MAXSIZE, align 4
  %89 = call i32 @GetDlgItem(i32 %87, i32 %88)
  %90 = load i32, i32* @FALSE, align 4
  %91 = call i32 @EnableWindow(i32 %89, i32 %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IDC_INITIALSIZE, align 4
  %96 = call i32 @GetDlgItem(i32 %94, i32 %95)
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @EnableWindow(i32 %96, i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @IDC_NOPAGEFILE, align 4
  %103 = load i32, i32* @BST_CHECKED, align 4
  %104 = call i32 @CheckDlgButton(i32 %101, i32 %102, i32 %103)
  br label %192

105:                                              ; preds = %75, %66
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %144

114:                                              ; preds = %105
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %114
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @IDC_MAXSIZE, align 4
  %128 = call i32 @GetDlgItem(i32 %126, i32 %127)
  %129 = load i32, i32* @FALSE, align 4
  %130 = call i32 @EnableWindow(i32 %128, i32 %129)
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @IDC_INITIALSIZE, align 4
  %135 = call i32 @GetDlgItem(i32 %133, i32 %134)
  %136 = load i32, i32* @FALSE, align 4
  %137 = call i32 @EnableWindow(i32 %135, i32 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @IDC_SYSMANSIZE, align 4
  %142 = load i32, i32* @BST_CHECKED, align 4
  %143 = call i32 @CheckDlgButton(i32 %140, i32 %141, i32 %142)
  br label %191

144:                                              ; preds = %114, %105
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @IDC_MAXSIZE, align 4
  %149 = call i32 @GetDlgItem(i32 %147, i32 %148)
  %150 = load i32, i32* @TRUE, align 4
  %151 = call i32 @EnableWindow(i32 %149, i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @IDC_INITIALSIZE, align 4
  %156 = call i32 @GetDlgItem(i32 %154, i32 %155)
  %157 = load i32, i32* @TRUE, align 4
  %158 = call i32 @EnableWindow(i32 %156, i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @IDC_INITIALSIZE, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i64, i64* %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @FALSE, align 4
  %171 = call i32 @SetDlgItemInt(i32 %161, i32 %162, i32 %169, i32 %170)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @IDC_MAXSIZE, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = load i64, i64* %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @FALSE, align 4
  %184 = call i32 @SetDlgItemInt(i32 %174, i32 %175, i32 %182, i32 %183)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @IDC_CUSTOM, align 4
  %189 = load i32, i32* @BST_CHECKED, align 4
  %190 = call i32 @CheckDlgButton(i32 %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %144, %123
  br label %192

192:                                              ; preds = %191, %84
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* @IDC_MINIMUM, align 4
  %195 = call i32* @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %196 = call i32 @SetDlgItemText(i32 %193, i32 %194, i32* %195)
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 8, i32* %197, align 4
  %198 = call i64 @GlobalMemoryStatusEx(%struct.TYPE_11__* %6)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %192
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = sdiv i32 %202, 1048576
  store i32 %203, i32* %8, align 4
  %204 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %205 = call i32* @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = sdiv i32 %207, 2
  %209 = add nsw i32 %206, %208
  %210 = call i32 @_stprintf(i32* %204, i32* %205, i32 %209)
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* @IDC_RECOMMENDED, align 4
  %213 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %214 = call i32 @SetDlgItemText(i32 %211, i32 %212, i32* %213)
  br label %215

215:                                              ; preds = %200, %192
  br label %216

216:                                              ; preds = %215, %16, %2
  %217 = load i32, i32* @TRUE, align 4
  ret i32 %217
}

declare dso_local i64 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SetDlgItemText(i32, i32, i32*) #1

declare dso_local i64 @GetDiskFreeSpaceEx(i32*, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @_stprintf(i32*, i32*, i32) #1

declare dso_local i32* @_T(i8*) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @CheckDlgButton(i32, i32, i32) #1

declare dso_local i32 @SetDlgItemInt(i32, i32, i32, i32) #1

declare dso_local i64 @GlobalMemoryStatusEx(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
