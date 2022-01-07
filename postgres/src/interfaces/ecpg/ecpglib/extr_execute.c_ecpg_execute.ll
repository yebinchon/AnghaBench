; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_execute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statement = type { i64, i64, i32, %struct.TYPE_2__*, i32, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"ecpg_execute on line %d: query: %s; with %d parameter(s) on connection %s\0A\00", align 1
@ECPGst_execute = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"ecpg_execute on line %d: using PQexecPrepared for \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"ecpg_execute on line %d: using PQexec\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"ecpg_execute on line %d: using PQexecParams\0A\00", align 1
@ECPGst_prepare = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecpg_execute(%struct.statement* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.statement*, align 8
  store %struct.statement* %0, %struct.statement** %3, align 8
  %4 = load %struct.statement*, %struct.statement** %3, align 8
  %5 = getelementptr inbounds %struct.statement, %struct.statement* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.statement*, %struct.statement** %3, align 8
  %8 = getelementptr inbounds %struct.statement, %struct.statement* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.statement*, %struct.statement** %3, align 8
  %11 = getelementptr inbounds %struct.statement, %struct.statement* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.statement*, %struct.statement** %3, align 8
  %14 = getelementptr inbounds %struct.statement, %struct.statement* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, i32, ...) @ecpg_log(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i64 %12, i32 %17)
  %19 = load %struct.statement*, %struct.statement** %3, align 8
  %20 = getelementptr inbounds %struct.statement, %struct.statement* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ECPGst_execute, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %1
  %25 = load %struct.statement*, %struct.statement** %3, align 8
  %26 = getelementptr inbounds %struct.statement, %struct.statement* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.statement*, %struct.statement** %3, align 8
  %31 = getelementptr inbounds %struct.statement, %struct.statement* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.statement*, %struct.statement** %3, align 8
  %34 = getelementptr inbounds %struct.statement, %struct.statement* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.statement*, %struct.statement** %3, align 8
  %37 = getelementptr inbounds %struct.statement, %struct.statement* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8**
  %40 = load %struct.statement*, %struct.statement** %3, align 8
  %41 = getelementptr inbounds %struct.statement, %struct.statement* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.statement*, %struct.statement** %3, align 8
  %45 = getelementptr inbounds %struct.statement, %struct.statement* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @PQexecPrepared(i32 %29, i32 %32, i64 %35, i8** %39, i32* %43, i32* %47, i32 0)
  %49 = load %struct.statement*, %struct.statement** %3, align 8
  %50 = getelementptr inbounds %struct.statement, %struct.statement* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.statement*, %struct.statement** %3, align 8
  %52 = getelementptr inbounds %struct.statement, %struct.statement* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.statement*, %struct.statement** %3, align 8
  %55 = getelementptr inbounds %struct.statement, %struct.statement* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, ...) @ecpg_log(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  br label %125

58:                                               ; preds = %1
  %59 = load %struct.statement*, %struct.statement** %3, align 8
  %60 = getelementptr inbounds %struct.statement, %struct.statement* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.statement*, %struct.statement** %3, align 8
  %65 = getelementptr inbounds %struct.statement, %struct.statement* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.statement*, %struct.statement** %3, align 8
  %70 = getelementptr inbounds %struct.statement, %struct.statement* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PQexec(i32 %68, i32 %71)
  %73 = load %struct.statement*, %struct.statement** %3, align 8
  %74 = getelementptr inbounds %struct.statement, %struct.statement* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.statement*, %struct.statement** %3, align 8
  %76 = getelementptr inbounds %struct.statement, %struct.statement* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, i32, ...) @ecpg_log(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %110

79:                                               ; preds = %58
  %80 = load %struct.statement*, %struct.statement** %3, align 8
  %81 = getelementptr inbounds %struct.statement, %struct.statement* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.statement*, %struct.statement** %3, align 8
  %86 = getelementptr inbounds %struct.statement, %struct.statement* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.statement*, %struct.statement** %3, align 8
  %89 = getelementptr inbounds %struct.statement, %struct.statement* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.statement*, %struct.statement** %3, align 8
  %92 = getelementptr inbounds %struct.statement, %struct.statement* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8**
  %95 = load %struct.statement*, %struct.statement** %3, align 8
  %96 = getelementptr inbounds %struct.statement, %struct.statement* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = load %struct.statement*, %struct.statement** %3, align 8
  %100 = getelementptr inbounds %struct.statement, %struct.statement* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = call i32 @PQexecParams(i32 %84, i32 %87, i64 %90, i32* null, i8** %94, i32* %98, i32* %102, i32 0)
  %104 = load %struct.statement*, %struct.statement** %3, align 8
  %105 = getelementptr inbounds %struct.statement, %struct.statement* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.statement*, %struct.statement** %3, align 8
  %107 = getelementptr inbounds %struct.statement, %struct.statement* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i8*, i32, ...) @ecpg_log(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %79, %63
  %111 = load %struct.statement*, %struct.statement** %3, align 8
  %112 = getelementptr inbounds %struct.statement, %struct.statement* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ECPGst_prepare, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load %struct.statement*, %struct.statement** %3, align 8
  %118 = call i32 @ecpg_register_prepared_stmt(%struct.statement* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load %struct.statement*, %struct.statement** %3, align 8
  %122 = call i32 @ecpg_free_params(%struct.statement* %121, i32 1)
  store i32 0, i32* %2, align 4
  br label %146

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %110
  br label %125

125:                                              ; preds = %124, %24
  %126 = load %struct.statement*, %struct.statement** %3, align 8
  %127 = call i32 @ecpg_free_params(%struct.statement* %126, i32 1)
  %128 = load %struct.statement*, %struct.statement** %3, align 8
  %129 = getelementptr inbounds %struct.statement, %struct.statement* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.statement*, %struct.statement** %3, align 8
  %132 = getelementptr inbounds %struct.statement, %struct.statement* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.statement*, %struct.statement** %3, align 8
  %135 = getelementptr inbounds %struct.statement, %struct.statement* %134, i32 0, i32 3
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.statement*, %struct.statement** %3, align 8
  %140 = getelementptr inbounds %struct.statement, %struct.statement* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ecpg_check_PQresult(i32 %130, i32 %133, i32 %138, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %146

145:                                              ; preds = %125
  store i32 1, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %144, %120
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @ecpg_log(i8*, i32, ...) #1

declare dso_local i32 @PQexecPrepared(i32, i32, i64, i8**, i32*, i32*, i32) #1

declare dso_local i32 @PQexec(i32, i32) #1

declare dso_local i32 @PQexecParams(i32, i32, i64, i32*, i8**, i32*, i32*, i32) #1

declare dso_local i32 @ecpg_register_prepared_stmt(%struct.statement*) #1

declare dso_local i32 @ecpg_free_params(%struct.statement*, i32) #1

declare dso_local i32 @ecpg_check_PQresult(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
