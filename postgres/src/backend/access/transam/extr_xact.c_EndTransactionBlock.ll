; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_EndTransactionBlock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_EndTransactionBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NO_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s can only be used in transaction blocks\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"COMMIT AND CHAIN\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"there is no transaction in progress\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"EndTransactionBlock: unexpected state %s\00", align 1
@ERRCODE_INVALID_TRANSACTION_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"cannot commit during a parallel operation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EndTransactionBlock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %162 [
    i32 140, label %9
    i32 141, label %12
    i32 147, label %30
    i32 130, label %33
    i32 136, label %74
    i32 137, label %133
    i32 139, label %149
    i32 143, label %155
    i32 144, label %155
    i32 132, label %155
    i32 142, label %155
    i32 129, label %155
    i32 131, label %155
    i32 146, label %155
    i32 135, label %155
    i32 145, label %155
    i32 134, label %155
    i32 128, label %155
    i32 133, label %155
    i32 138, label %155
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 142, i32* %11, align 8
  store i32 1, i32* %4, align 4
  br label %162

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_NO_ACTIVE_SQL_TRANSACTION, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @ereport(i32 %16, i32 %19)
  br label %27

21:                                               ; preds = %12
  %22 = load i32, i32* @WARNING, align 4
  %23 = load i32, i32* @ERRCODE_NO_ACTIVE_SQL_TRANSACTION, align 4
  %24 = call i32 @errcode(i32 %23)
  %25 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @ereport(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 142, i32* %29, align 8
  store i32 1, i32* %4, align 4
  br label %162

30:                                               ; preds = %1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 146, i32* %32, align 8
  br label %162

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %54, %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 130
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 131, i32* %46, align 8
  br label %54

47:                                               ; preds = %39
  %48 = load i32, i32* @FATAL, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @BlockStateAsString(i32 %51)
  %53 = call i32 @elog(i32 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %44
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %3, align 8
  br label %34

58:                                               ; preds = %34
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 140
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 142, i32* %65, align 8
  br label %73

66:                                               ; preds = %58
  %67 = load i32, i32* @FATAL, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @BlockStateAsString(i32 %70)
  %72 = call i32 @elog(i32 %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %66, %63
  store i32 1, i32* %4, align 4
  br label %162

74:                                               ; preds = %1
  br label %75

75:                                               ; preds = %104, %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = icmp ne %struct.TYPE_3__* %78, null
  br i1 %79, label %80, label %108

80:                                               ; preds = %75
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 130
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 134, i32* %87, align 8
  br label %104

88:                                               ; preds = %80
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 136
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 135, i32* %95, align 8
  br label %103

96:                                               ; preds = %88
  %97 = load i32, i32* @FATAL, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @BlockStateAsString(i32 %100)
  %102 = call i32 @elog(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %96, %93
  br label %104

104:                                              ; preds = %103, %85
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  store %struct.TYPE_3__* %107, %struct.TYPE_3__** %3, align 8
  br label %75

108:                                              ; preds = %75
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 140
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 145, i32* %115, align 8
  br label %132

116:                                              ; preds = %108
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 147
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i32 146, i32* %123, align 8
  br label %131

124:                                              ; preds = %116
  %125 = load i32, i32* @FATAL, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @BlockStateAsString(i32 %128)
  %130 = call i32 @elog(i32 %125, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %124, %121
  br label %132

132:                                              ; preds = %131, %113
  br label %162

133:                                              ; preds = %1
  %134 = load i32, i32* %2, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* @ERROR, align 4
  %138 = load i32, i32* @ERRCODE_NO_ACTIVE_SQL_TRANSACTION, align 4
  %139 = call i32 @errcode(i32 %138)
  %140 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %141 = call i32 @ereport(i32 %137, i32 %140)
  br label %148

142:                                              ; preds = %133
  %143 = load i32, i32* @WARNING, align 4
  %144 = load i32, i32* @ERRCODE_NO_ACTIVE_SQL_TRANSACTION, align 4
  %145 = call i32 @errcode(i32 %144)
  %146 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %147 = call i32 @ereport(i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %142, %136
  store i32 1, i32* %4, align 4
  br label %162

149:                                              ; preds = %1
  %150 = load i32, i32* @FATAL, align 4
  %151 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_STATE, align 4
  %152 = call i32 @errcode(i32 %151)
  %153 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %154 = call i32 @ereport(i32 %150, i32 %153)
  br label %162

155:                                              ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %156 = load i32, i32* @FATAL, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @BlockStateAsString(i32 %159)
  %161 = call i32 @elog(i32 %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %1, %155, %149, %148, %132, %73, %30, %27, %9
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 137
  br i1 %166, label %182, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 142
  br i1 %171, label %182, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 146
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 145
  br label %182

182:                                              ; preds = %177, %172, %167, %162
  %183 = phi i1 [ true, %172 ], [ true, %167 ], [ true, %162 ], [ %181, %177 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @Assert(i32 %184)
  %186 = load i32, i32* %2, align 4
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @BlockStateAsString(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
