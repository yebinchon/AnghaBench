; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_prepare_common.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_prepare_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.statement*, i32 }
%struct.statement = type { i32, i32, %struct.statement*, %struct.statement*, %struct.statement*, i32, %struct.connection*, %struct.statement*, i32*, i32 }
%struct.prepared_statement = type { i32, i32, %struct.prepared_statement*, %struct.prepared_statement*, %struct.prepared_statement*, i32, %struct.connection*, %struct.prepared_statement*, i32*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"prepare_common on line %d: name %s; query: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.connection*, i8*, i8*)* @prepare_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_common(i32 %0, %struct.connection* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.statement*, align 8
  %11 = alloca %struct.prepared_statement*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.connection* %1, %struct.connection** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @ecpg_alloc(i32 72, i32 %13)
  %15 = inttoptr i64 %14 to %struct.prepared_statement*
  store %struct.prepared_statement* %15, %struct.prepared_statement** %11, align 8
  %16 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %17 = icmp ne %struct.prepared_statement* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %131

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @ecpg_alloc(i32 72, i32 %20)
  %22 = inttoptr i64 %21 to %struct.statement*
  store %struct.statement* %22, %struct.statement** %10, align 8
  %23 = load %struct.statement*, %struct.statement** %10, align 8
  %24 = icmp ne %struct.statement* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %27 = bitcast %struct.prepared_statement* %26 to %struct.statement*
  %28 = call i32 @ecpg_free(%struct.statement* %27)
  store i32 0, i32* %5, align 4
  br label %131

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.statement*, %struct.statement** %10, align 8
  %32 = getelementptr inbounds %struct.statement, %struct.statement* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.connection*, %struct.connection** %7, align 8
  %34 = load %struct.statement*, %struct.statement** %10, align 8
  %35 = getelementptr inbounds %struct.statement, %struct.statement* %34, i32 0, i32 6
  store %struct.connection* %33, %struct.connection** %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @ecpg_strdup(i8* %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.statement*
  %40 = load %struct.statement*, %struct.statement** %10, align 8
  %41 = getelementptr inbounds %struct.statement, %struct.statement* %40, i32 0, i32 3
  store %struct.statement* %39, %struct.statement** %41, align 8
  %42 = load %struct.statement*, %struct.statement** %10, align 8
  %43 = getelementptr inbounds %struct.statement, %struct.statement* %42, i32 0, i32 8
  store i32* null, i32** %43, align 8
  %44 = load %struct.statement*, %struct.statement** %10, align 8
  %45 = getelementptr inbounds %struct.statement, %struct.statement* %44, i32 0, i32 9
  store i32 0, i32* %45, align 8
  %46 = load %struct.statement*, %struct.statement** %10, align 8
  %47 = getelementptr inbounds %struct.statement, %struct.statement* %46, i32 0, i32 3
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @replace_variables(%struct.statement** %47, i32 %48)
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @ecpg_strdup(i8* %50, i32 %51)
  %53 = bitcast i8* %52 to %struct.prepared_statement*
  %54 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %55 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %54, i32 0, i32 4
  store %struct.prepared_statement* %53, %struct.prepared_statement** %55, align 8
  %56 = load %struct.statement*, %struct.statement** %10, align 8
  %57 = bitcast %struct.statement* %56 to %struct.prepared_statement*
  %58 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %59 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %58, i32 0, i32 7
  store %struct.prepared_statement* %57, %struct.prepared_statement** %59, align 8
  %60 = load %struct.statement*, %struct.statement** %10, align 8
  %61 = getelementptr inbounds %struct.statement, %struct.statement* %60, i32 0, i32 6
  %62 = load %struct.connection*, %struct.connection** %61, align 8
  %63 = getelementptr inbounds %struct.connection, %struct.connection* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.statement*, %struct.statement** %10, align 8
  %67 = getelementptr inbounds %struct.statement, %struct.statement* %66, i32 0, i32 3
  %68 = load %struct.statement*, %struct.statement** %67, align 8
  %69 = call i32* @PQprepare(i32 %64, i8* %65, %struct.statement* %68, i32 0, i32* null)
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load %struct.statement*, %struct.statement** %10, align 8
  %72 = getelementptr inbounds %struct.statement, %struct.statement* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.statement*, %struct.statement** %10, align 8
  %75 = getelementptr inbounds %struct.statement, %struct.statement* %74, i32 0, i32 6
  %76 = load %struct.connection*, %struct.connection** %75, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.statement*, %struct.statement** %10, align 8
  %80 = getelementptr inbounds %struct.statement, %struct.statement* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ecpg_check_PQresult(i32* %70, i32 %73, i32 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %29
  %85 = load %struct.statement*, %struct.statement** %10, align 8
  %86 = getelementptr inbounds %struct.statement, %struct.statement* %85, i32 0, i32 3
  %87 = load %struct.statement*, %struct.statement** %86, align 8
  %88 = call i32 @ecpg_free(%struct.statement* %87)
  %89 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %90 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %89, i32 0, i32 4
  %91 = load %struct.prepared_statement*, %struct.prepared_statement** %90, align 8
  %92 = bitcast %struct.prepared_statement* %91 to %struct.statement*
  %93 = call i32 @ecpg_free(%struct.statement* %92)
  %94 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %95 = bitcast %struct.prepared_statement* %94 to %struct.statement*
  %96 = call i32 @ecpg_free(%struct.statement* %95)
  %97 = load %struct.statement*, %struct.statement** %10, align 8
  %98 = call i32 @ecpg_free(%struct.statement* %97)
  store i32 0, i32* %5, align 4
  br label %131

99:                                               ; preds = %29
  %100 = load %struct.statement*, %struct.statement** %10, align 8
  %101 = getelementptr inbounds %struct.statement, %struct.statement* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load %struct.statement*, %struct.statement** %10, align 8
  %105 = getelementptr inbounds %struct.statement, %struct.statement* %104, i32 0, i32 3
  %106 = load %struct.statement*, %struct.statement** %105, align 8
  %107 = call i32 @ecpg_log(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %102, i8* %103, %struct.statement* %106)
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @PQclear(i32* %108)
  %110 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %111 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.connection*, %struct.connection** %7, align 8
  %113 = getelementptr inbounds %struct.connection, %struct.connection* %112, i32 0, i32 0
  %114 = load %struct.statement*, %struct.statement** %113, align 8
  %115 = icmp eq %struct.statement* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %99
  %117 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %118 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %117, i32 0, i32 2
  store %struct.prepared_statement* null, %struct.prepared_statement** %118, align 8
  br label %126

119:                                              ; preds = %99
  %120 = load %struct.connection*, %struct.connection** %7, align 8
  %121 = getelementptr inbounds %struct.connection, %struct.connection* %120, i32 0, i32 0
  %122 = load %struct.statement*, %struct.statement** %121, align 8
  %123 = bitcast %struct.statement* %122 to %struct.prepared_statement*
  %124 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %125 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %124, i32 0, i32 2
  store %struct.prepared_statement* %123, %struct.prepared_statement** %125, align 8
  br label %126

126:                                              ; preds = %119, %116
  %127 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %128 = bitcast %struct.prepared_statement* %127 to %struct.statement*
  %129 = load %struct.connection*, %struct.connection** %7, align 8
  %130 = getelementptr inbounds %struct.connection, %struct.connection* %129, i32 0, i32 0
  store %struct.statement* %128, %struct.statement** %130, align 8
  store i32 1, i32* %5, align 4
  br label %131

131:                                              ; preds = %126, %84, %25, %18
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @ecpg_alloc(i32, i32) #1

declare dso_local i32 @ecpg_free(%struct.statement*) #1

declare dso_local i8* @ecpg_strdup(i8*, i32) #1

declare dso_local i32 @replace_variables(%struct.statement**, i32) #1

declare dso_local i32* @PQprepare(i32, i8*, %struct.statement*, i32, i32*) #1

declare dso_local i32 @ecpg_check_PQresult(i32*, i32, i32, i32) #1

declare dso_local i32 @ecpg_log(i8*, i32, i8*, %struct.statement*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
