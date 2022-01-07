; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_funcs.c_dump_stmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_funcs.c_dump_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%3d:\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unrecognized cmd_type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @dump_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_stmt(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %122 [
    i32 153, label %10
    i32 154, label %14
    i32 138, label %18
    i32 151, label %22
    i32 137, label %26
    i32 128, label %30
    i32 141, label %34
    i32 140, label %38
    i32 143, label %42
    i32 142, label %46
    i32 145, label %50
    i32 133, label %54
    i32 132, label %58
    i32 131, label %62
    i32 134, label %66
    i32 155, label %70
    i32 146, label %74
    i32 148, label %78
    i32 147, label %82
    i32 139, label %86
    i32 136, label %90
    i32 144, label %94
    i32 150, label %98
    i32 135, label %102
    i32 152, label %106
    i32 149, label %110
    i32 130, label %114
    i32 129, label %118
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = bitcast %struct.TYPE_3__* %11 to i32*
  %13 = call i32 @dump_block(i32* %12)
  br label %128

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = bitcast %struct.TYPE_3__* %15 to i32*
  %17 = call i32 @dump_assign(i32* %16)
  br label %128

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = bitcast %struct.TYPE_3__* %19 to i32*
  %21 = call i32 @dump_if(i32* %20)
  br label %128

22:                                               ; preds = %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = bitcast %struct.TYPE_3__* %23 to i32*
  %25 = call i32 @dump_case(i32* %24)
  br label %128

26:                                               ; preds = %1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = bitcast %struct.TYPE_3__* %27 to i32*
  %29 = call i32 @dump_loop(i32* %28)
  br label %128

30:                                               ; preds = %1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = bitcast %struct.TYPE_3__* %31 to i32*
  %33 = call i32 @dump_while(i32* %32)
  br label %128

34:                                               ; preds = %1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = bitcast %struct.TYPE_3__* %35 to i32*
  %37 = call i32 @dump_fori(i32* %36)
  br label %128

38:                                               ; preds = %1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = bitcast %struct.TYPE_3__* %39 to i32*
  %41 = call i32 @dump_fors(i32* %40)
  br label %128

42:                                               ; preds = %1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = bitcast %struct.TYPE_3__* %43 to i32*
  %45 = call i32 @dump_forc(i32* %44)
  br label %128

46:                                               ; preds = %1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = bitcast %struct.TYPE_3__* %47 to i32*
  %49 = call i32 @dump_foreach_a(i32* %48)
  br label %128

50:                                               ; preds = %1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = bitcast %struct.TYPE_3__* %51 to i32*
  %53 = call i32 @dump_exit(i32* %52)
  br label %128

54:                                               ; preds = %1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = bitcast %struct.TYPE_3__* %55 to i32*
  %57 = call i32 @dump_return(i32* %56)
  br label %128

58:                                               ; preds = %1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = bitcast %struct.TYPE_3__* %59 to i32*
  %61 = call i32 @dump_return_next(i32* %60)
  br label %128

62:                                               ; preds = %1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = bitcast %struct.TYPE_3__* %63 to i32*
  %65 = call i32 @dump_return_query(i32* %64)
  br label %128

66:                                               ; preds = %1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = bitcast %struct.TYPE_3__* %67 to i32*
  %69 = call i32 @dump_raise(i32* %68)
  br label %128

70:                                               ; preds = %1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = bitcast %struct.TYPE_3__* %71 to i32*
  %73 = call i32 @dump_assert(i32* %72)
  br label %128

74:                                               ; preds = %1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = bitcast %struct.TYPE_3__* %75 to i32*
  %77 = call i32 @dump_execsql(i32* %76)
  br label %128

78:                                               ; preds = %1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = bitcast %struct.TYPE_3__* %79 to i32*
  %81 = call i32 @dump_dynexecute(i32* %80)
  br label %128

82:                                               ; preds = %1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = bitcast %struct.TYPE_3__* %83 to i32*
  %85 = call i32 @dump_dynfors(i32* %84)
  br label %128

86:                                               ; preds = %1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = bitcast %struct.TYPE_3__* %87 to i32*
  %89 = call i32 @dump_getdiag(i32* %88)
  br label %128

90:                                               ; preds = %1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = bitcast %struct.TYPE_3__* %91 to i32*
  %93 = call i32 @dump_open(i32* %92)
  br label %128

94:                                               ; preds = %1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %96 = bitcast %struct.TYPE_3__* %95 to i32*
  %97 = call i32 @dump_fetch(i32* %96)
  br label %128

98:                                               ; preds = %1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %100 = bitcast %struct.TYPE_3__* %99 to i32*
  %101 = call i32 @dump_close(i32* %100)
  br label %128

102:                                              ; preds = %1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = bitcast %struct.TYPE_3__* %103 to i32*
  %105 = call i32 @dump_perform(i32* %104)
  br label %128

106:                                              ; preds = %1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %108 = bitcast %struct.TYPE_3__* %107 to i32*
  %109 = call i32 @dump_call(i32* %108)
  br label %128

110:                                              ; preds = %1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = bitcast %struct.TYPE_3__* %111 to i32*
  %113 = call i32 @dump_commit(i32* %112)
  br label %128

114:                                              ; preds = %1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %116 = bitcast %struct.TYPE_3__* %115 to i32*
  %117 = call i32 @dump_rollback(i32* %116)
  br label %128

118:                                              ; preds = %1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %120 = bitcast %struct.TYPE_3__* %119 to i32*
  %121 = call i32 @dump_set(i32* %120)
  br label %128

122:                                              ; preds = %1
  %123 = load i32, i32* @ERROR, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @elog(i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %122, %118, %114, %110, %106, %102, %98, %94, %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @dump_block(i32*) #1

declare dso_local i32 @dump_assign(i32*) #1

declare dso_local i32 @dump_if(i32*) #1

declare dso_local i32 @dump_case(i32*) #1

declare dso_local i32 @dump_loop(i32*) #1

declare dso_local i32 @dump_while(i32*) #1

declare dso_local i32 @dump_fori(i32*) #1

declare dso_local i32 @dump_fors(i32*) #1

declare dso_local i32 @dump_forc(i32*) #1

declare dso_local i32 @dump_foreach_a(i32*) #1

declare dso_local i32 @dump_exit(i32*) #1

declare dso_local i32 @dump_return(i32*) #1

declare dso_local i32 @dump_return_next(i32*) #1

declare dso_local i32 @dump_return_query(i32*) #1

declare dso_local i32 @dump_raise(i32*) #1

declare dso_local i32 @dump_assert(i32*) #1

declare dso_local i32 @dump_execsql(i32*) #1

declare dso_local i32 @dump_dynexecute(i32*) #1

declare dso_local i32 @dump_dynfors(i32*) #1

declare dso_local i32 @dump_getdiag(i32*) #1

declare dso_local i32 @dump_open(i32*) #1

declare dso_local i32 @dump_fetch(i32*) #1

declare dso_local i32 @dump_close(i32*) #1

declare dso_local i32 @dump_perform(i32*) #1

declare dso_local i32 @dump_call(i32*) #1

declare dso_local i32 @dump_commit(i32*) #1

declare dso_local i32 @dump_rollback(i32*) #1

declare dso_local i32 @dump_set(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
