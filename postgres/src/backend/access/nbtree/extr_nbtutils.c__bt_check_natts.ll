; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_check_natts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_check_natts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FirstOffsetNumber = common dso_local global i64 0, align 8
@BT_N_KEYS_OFFSET_MASK = common dso_local global i64 0, align 8
@INDEX_MAX_KEYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"BT_N_KEYS_OFFSET_MASK can't fit INDEX_MAX_KEYS\00", align 1
@INDEX_ALT_TID_MASK = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_check_natts(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @IndexRelationGetNumberOfAttributes(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @PageGetSpecialPointer(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i64 @P_IGNORE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %161

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @FirstOffsetNumber, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @PageGetMaxOffsetNumber(i32 %31)
  %33 = icmp sle i64 %30, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load i64, i64* @BT_N_KEYS_OFFSET_MASK, align 8
  %39 = load i64, i64* @INDEX_MAX_KEYS, align 8
  %40 = icmp sge i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @StaticAssertStmt(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @PageGetItemId(i32 %44, i64 %45)
  %47 = call i64 @PageGetItem(i32 %43, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %13, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @BTreeTupleGetNAtts(%struct.TYPE_4__* %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @P_ISLEAF(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %34
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @P_FIRSTDATAKEY(i32 %57)
  %59 = icmp sge i64 %56, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @INDEX_ALT_TID_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %161

68:                                               ; preds = %60
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %161

73:                                               ; preds = %55
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @P_RIGHTMOST(i32 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @Assert(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %161

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87
  br label %132

89:                                               ; preds = %34
  %90 = load i64, i64* %9, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @P_FIRSTDATAKEY(i32 %91)
  %93 = icmp eq i64 %90, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %161

101:                                              ; preds = %94
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @INDEX_ALT_TID_MASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = call i64 @ItemPointerGetOffsetNumber(i32* %113)
  %115 = load i64, i64* @P_HIKEY, align 8
  %116 = icmp eq i64 %114, %115
  br label %117

117:                                              ; preds = %111, %104
  %118 = phi i1 [ false, %104 ], [ %116, %111 ]
  br label %119

119:                                              ; preds = %117, %101
  %120 = phi i1 [ true, %101 ], [ %118, %117 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %5, align 4
  br label %161

122:                                              ; preds = %89
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %5, align 4
  br label %161

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %88
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @Assert(i32 %133)
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @INDEX_ALT_TID_MASK, align 4
  %139 = and i32 %137, %138
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %161

142:                                              ; preds = %132
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %144 = call i32* @BTreeTupleGetHeapTID(%struct.TYPE_4__* %143)
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 0, i32* %5, align 4
  br label %161

151:                                              ; preds = %146, %142
  %152 = load i32, i32* %14, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp sle i32 %155, %156
  br label %158

158:                                              ; preds = %154, %151
  %159 = phi i1 [ false, %151 ], [ %157, %154 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %158, %150, %141, %125, %119, %97, %82, %68, %67, %24
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @IndexRelationGetNumberOfAttributes(i32) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(i32) #1

declare dso_local i32 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_IGNORE(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @StaticAssertStmt(i32, i8*) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @BTreeTupleGetNAtts(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @P_ISLEAF(i32) #1

declare dso_local i64 @P_FIRSTDATAKEY(i32) #1

declare dso_local i32 @P_RIGHTMOST(i32) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32* @BTreeTupleGetHeapTID(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
