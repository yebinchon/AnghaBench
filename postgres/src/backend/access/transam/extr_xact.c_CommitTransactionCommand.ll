; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_CommitTransactionCommand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_CommitTransactionCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32* }

@CurrentTransactionState = common dso_local global %struct.TYPE_3__* null, align 8
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"CommitTransactionCommand: unexpected state %s\00", align 1
@ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CommitTransactionCommand() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %1, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (...) @SaveTransactionCharacteristics()
  br label %13

13:                                               ; preds = %11, %0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %222 [
    i32 143, label %17
    i32 139, label %17
    i32 137, label %24
    i32 144, label %28
    i32 140, label %31
    i32 141, label %31
    i32 130, label %31
    i32 142, label %33
    i32 147, label %49
    i32 136, label %49
    i32 146, label %50
    i32 145, label %66
    i32 138, label %83
    i32 132, label %87
    i32 129, label %91
    i32 131, label %114
    i32 135, label %162
    i32 134, label %164
    i32 128, label %167
    i32 133, label %195
  ]

17:                                               ; preds = %13, %13
  %18 = load i32, i32* @FATAL, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BlockStateAsString(i32 %21)
  %23 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %222

24:                                               ; preds = %13
  %25 = call i32 (...) @CommitTransaction()
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 143, i32* %27, align 4
  br label %222

28:                                               ; preds = %13
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 140, i32* %30, align 4
  br label %222

31:                                               ; preds = %13, %13, %13
  %32 = call i32 (...) @CommandCounterIncrement()
  br label %222

33:                                               ; preds = %13
  %34 = call i32 (...) @CommitTransaction()
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 143, i32* %36, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = call i32 (...) @StartTransaction()
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 140, i32* %44, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = call i32 (...) @RestoreTransactionCharacteristics()
  br label %48

48:                                               ; preds = %41, %33
  br label %222

49:                                               ; preds = %13, %13
  br label %222

50:                                               ; preds = %13
  %51 = call i32 (...) @CleanupTransaction()
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 143, i32* %53, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = call i32 (...) @StartTransaction()
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 140, i32* %61, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = call i32 (...) @RestoreTransactionCharacteristics()
  br label %65

65:                                               ; preds = %58, %50
  br label %222

66:                                               ; preds = %13
  %67 = call i32 (...) @AbortTransaction()
  %68 = call i32 (...) @CleanupTransaction()
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 143, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = call i32 (...) @StartTransaction()
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 140, i32* %78, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = call i32 (...) @RestoreTransactionCharacteristics()
  br label %82

82:                                               ; preds = %75, %66
  br label %222

83:                                               ; preds = %13
  %84 = call i32 (...) @PrepareTransaction()
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 143, i32* %86, align 4
  br label %222

87:                                               ; preds = %13
  %88 = call i32 (...) @StartSubTransaction()
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 130, i32* %90, align 4
  br label %222

91:                                               ; preds = %13
  br label %92

92:                                               ; preds = %95, %91
  %93 = call i32 (...) @CommitSubTransaction()
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %94, %struct.TYPE_3__** %1, align 8
  br label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 129
  br i1 %99, label %92, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 140
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 130
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i1 [ true, %100 ], [ %109, %105 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @Assert(i32 %112)
  br label %222

114:                                              ; preds = %13
  br label %115

115:                                              ; preds = %118, %114
  %116 = call i32 (...) @CommitSubTransaction()
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %117, %struct.TYPE_3__** %1, align 8
  br label %118

118:                                              ; preds = %115
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 131
  br i1 %122, label %115, label %123

123:                                              ; preds = %118
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 142
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 @Assert(i32 %133)
  %135 = call i32 (...) @CommitTransaction()
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i32 143, i32* %137, align 4
  br label %161

138:                                              ; preds = %123
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 138
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  %148 = zext i1 %147 to i32
  %149 = call i32 @Assert(i32 %148)
  %150 = call i32 (...) @PrepareTransaction()
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  store i32 143, i32* %152, align 4
  br label %160

153:                                              ; preds = %138
  %154 = load i32, i32* @ERROR, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @BlockStateAsString(i32 %157)
  %159 = call i32 @elog(i32 %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %153, %143
  br label %161

161:                                              ; preds = %160, %128
  br label %222

162:                                              ; preds = %13
  %163 = call i32 (...) @CleanupSubTransaction()
  call void @CommitTransactionCommand()
  br label %222

164:                                              ; preds = %13
  %165 = call i32 (...) @AbortSubTransaction()
  %166 = call i32 (...) @CleanupSubTransaction()
  call void @CommitTransactionCommand()
  br label %222

167:                                              ; preds = %13
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %2, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  store i8* null, i8** %172, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %3, align 4
  %176 = call i32 (...) @AbortSubTransaction()
  %177 = call i32 (...) @CleanupSubTransaction()
  %178 = call i32 @DefineSavepoint(i32* null)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %179, %struct.TYPE_3__** %1, align 8
  %180 = load i8*, i8** %2, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* %3, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 132
  %190 = zext i1 %189 to i32
  %191 = call i32 @AssertState(i32 %190)
  %192 = call i32 (...) @StartSubTransaction()
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  store i32 130, i32* %194, align 4
  br label %222

195:                                              ; preds = %13
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  store i8* %198, i8** %4, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  store i8* null, i8** %200, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %5, align 4
  %204 = call i32 (...) @CleanupSubTransaction()
  %205 = call i32 @DefineSavepoint(i32* null)
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CurrentTransactionState, align 8
  store %struct.TYPE_3__* %206, %struct.TYPE_3__** %1, align 8
  %207 = load i8*, i8** %4, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* %5, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 132
  %217 = zext i1 %216 to i32
  %218 = call i32 @AssertState(i32 %217)
  %219 = call i32 (...) @StartSubTransaction()
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  store i32 130, i32* %221, align 4
  br label %222

222:                                              ; preds = %13, %195, %167, %164, %162, %161, %110, %87, %83, %82, %65, %49, %48, %31, %28, %24, %17
  ret void
}

declare dso_local i32 @SaveTransactionCharacteristics(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @BlockStateAsString(i32) #1

declare dso_local i32 @CommitTransaction(...) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @StartTransaction(...) #1

declare dso_local i32 @RestoreTransactionCharacteristics(...) #1

declare dso_local i32 @CleanupTransaction(...) #1

declare dso_local i32 @AbortTransaction(...) #1

declare dso_local i32 @PrepareTransaction(...) #1

declare dso_local i32 @StartSubTransaction(...) #1

declare dso_local i32 @CommitSubTransaction(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CleanupSubTransaction(...) #1

declare dso_local i32 @AbortSubTransaction(...) #1

declare dso_local i32 @DefineSavepoint(i32*) #1

declare dso_local i32 @AssertState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
