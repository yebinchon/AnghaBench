; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistPageAddNewItem.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistPageAddNewItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@SGDTSIZE = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8
@SPGIST_PLACEHOLDER = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to add item of size %u to SPGiST index page\00", align 1
@ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SpGistPageAddNewItem(i32* %0, i32 %1, i32 %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_4__* @SpGistPageGetOpaque(i32 %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %14, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %135

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @PageGetExactFreeSpace(i32 %26)
  %28 = load i64, i64* @SGDTSIZE, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @MAXALIGN(i64 %30)
  %32 = icmp sge i64 %29, %31
  br i1 %32, label %33, label %135

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @PageGetMaxOffsetNumber(i32 %34)
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %36, i64* %17, align 8
  br label %37

37:                                               ; preds = %87, %33
  %38 = load i64*, i64** %12, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i64*, i64** %12, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @InvalidOffsetNumber, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i64*, i64** %12, align 8
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %15, align 8
  br label %50

48:                                               ; preds = %40, %37
  %49 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %49, i64* %15, align 8
  br label %50

50:                                               ; preds = %48, %45
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* %15, align 8
  %59 = call i32 @PageGetItemId(i32 %57, i64 %58)
  %60 = call i32 @PageGetItem(i32 %56, i32 %59)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %18, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SPGIST_PLACEHOLDER, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i64, i64* %15, align 8
  store i64 %69, i64* %17, align 8
  br label %74

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %15, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %15, align 8
  br label %51

74:                                               ; preds = %68, %51
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* @InvalidOffsetNumber, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %93

79:                                               ; preds = %74
  %80 = load i64*, i64** %12, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i64*, i64** %12, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @InvalidOffsetNumber, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, i64* @InvalidOffsetNumber, align 8
  %89 = load i64*, i64** %12, align 8
  store i64 %88, i64* %89, align 8
  br label %37

90:                                               ; preds = %82, %79
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %78
  %94 = load i64, i64* %17, align 8
  %95 = load i64, i64* @InvalidOffsetNumber, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %134

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = load i64, i64* %17, align 8
  %100 = call i32 @PageIndexTupleDelete(i32 %98, i64 %99)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %17, align 8
  %105 = call i64 @PageAddItem(i32 %101, i32 %102, i64 %103, i64 %104, i32 0, i32 0)
  store i64 %105, i64* %17, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* @InvalidOffsetNumber, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %97
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @Assert(i32 %114)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %117, align 8
  %120 = load i64*, i64** %12, align 8
  %121 = icmp ne i64* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %109
  %123 = load i64, i64* %17, align 8
  %124 = add nsw i64 %123, 1
  %125 = load i64*, i64** %12, align 8
  store i64 %124, i64* %125, align 8
  br label %126

126:                                              ; preds = %122, %109
  br label %132

127:                                              ; preds = %97
  %128 = load i32, i32* @PANIC, align 4
  %129 = load i64, i64* %11, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @elog(i32 %128, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %126
  %133 = load i64, i64* %17, align 8
  store i64 %133, i64* %7, align 8
  br label %154

134:                                              ; preds = %93
  br label %135

135:                                              ; preds = %134, %25, %6
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* @InvalidOffsetNumber, align 8
  %140 = call i64 @PageAddItem(i32 %136, i32 %137, i64 %138, i64 %139, i32 0, i32 0)
  store i64 %140, i64* %17, align 8
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* @InvalidOffsetNumber, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %135
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @ERROR, align 4
  %149 = load i64, i64* %11, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 @elog(i32 %148, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %147, %144, %135
  %153 = load i64, i64* %17, align 8
  store i64 %153, i64* %7, align 8
  br label %154

154:                                              ; preds = %152, %132
  %155 = load i64, i64* %7, align 8
  ret i64 %155
}

declare dso_local %struct.TYPE_4__* @SpGistPageGetOpaque(i32) #1

declare dso_local i64 @PageGetExactFreeSpace(i32) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i64) #1

declare dso_local i64 @PageAddItem(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
