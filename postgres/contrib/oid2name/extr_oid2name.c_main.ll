; ModuleID = '/home/carl/AnghaBench/postgres/contrib/oid2name/extr_oid2name.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/oid2name/extr_oid2name.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8*, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"All tablespaces:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"From database \22%s\22:\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"All databases:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.options*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i64 @pg_malloc(i32 48)
  %9 = inttoptr i64 %8 to %struct.options*
  store %struct.options* %9, %struct.options** %6, align 8
  %10 = call i64 @pg_malloc(i32 16)
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  %12 = load %struct.options*, %struct.options** %6, align 8
  %13 = getelementptr inbounds %struct.options, %struct.options* %12, i32 0, i32 5
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %13, align 8
  %14 = call i64 @pg_malloc(i32 16)
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  %16 = load %struct.options*, %struct.options** %6, align 8
  %17 = getelementptr inbounds %struct.options, %struct.options* %16, i32 0, i32 4
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %17, align 8
  %18 = call i64 @pg_malloc(i32 16)
  %19 = inttoptr i64 %18 to %struct.TYPE_2__*
  %20 = load %struct.options*, %struct.options** %6, align 8
  %21 = getelementptr inbounds %struct.options, %struct.options* %20, i32 0, i32 3
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %21, align 8
  %22 = load %struct.options*, %struct.options** %6, align 8
  %23 = getelementptr inbounds %struct.options, %struct.options* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.options*, %struct.options** %6, align 8
  %27 = getelementptr inbounds %struct.options, %struct.options* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.options*, %struct.options** %6, align 8
  %31 = getelementptr inbounds %struct.options, %struct.options* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.options*, %struct.options** %6, align 8
  %35 = getelementptr inbounds %struct.options, %struct.options* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.options*, %struct.options** %6, align 8
  %39 = getelementptr inbounds %struct.options, %struct.options* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.options*, %struct.options** %6, align 8
  %43 = getelementptr inbounds %struct.options, %struct.options* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = load %struct.options*, %struct.options** %6, align 8
  %49 = call i32 @get_opts(i32 %46, i8** %47, %struct.options* %48)
  %50 = load %struct.options*, %struct.options** %6, align 8
  %51 = getelementptr inbounds %struct.options, %struct.options* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load %struct.options*, %struct.options** %6, align 8
  %56 = getelementptr inbounds %struct.options, %struct.options* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.options*, %struct.options** %6, align 8
  %58 = getelementptr inbounds %struct.options, %struct.options* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %54, %2
  %60 = load %struct.options*, %struct.options** %6, align 8
  %61 = call i32* @sql_conn(%struct.options* %60)
  store i32* %61, i32** %7, align 8
  %62 = load %struct.options*, %struct.options** %6, align 8
  %63 = getelementptr inbounds %struct.options, %struct.options* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %59
  %67 = load %struct.options*, %struct.options** %6, align 8
  %68 = getelementptr inbounds %struct.options, %struct.options* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.options*, %struct.options** %6, align 8
  %76 = call i32 @sql_exec_dumpalltbspc(i32* %74, %struct.options* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @PQfinish(i32* %77)
  %79 = call i32 @exit(i32 0) #3
  unreachable

80:                                               ; preds = %59
  %81 = load %struct.options*, %struct.options** %6, align 8
  %82 = getelementptr inbounds %struct.options, %struct.options* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %80
  %88 = load %struct.options*, %struct.options** %6, align 8
  %89 = getelementptr inbounds %struct.options, %struct.options* %88, i32 0, i32 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load %struct.options*, %struct.options** %6, align 8
  %96 = getelementptr inbounds %struct.options, %struct.options* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %94, %87, %80
  %102 = load %struct.options*, %struct.options** %6, align 8
  %103 = getelementptr inbounds %struct.options, %struct.options* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load %struct.options*, %struct.options** %6, align 8
  %108 = getelementptr inbounds %struct.options, %struct.options* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.options*, %struct.options** %6, align 8
  %114 = call i32 @sql_exec_searchtables(i32* %112, %struct.options* %113)
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @PQfinish(i32* %115)
  %117 = call i32 @exit(i32 0) #3
  unreachable

118:                                              ; preds = %94
  %119 = load %struct.options*, %struct.options** %6, align 8
  %120 = getelementptr inbounds %struct.options, %struct.options* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %145

123:                                              ; preds = %118
  %124 = load %struct.options*, %struct.options** %6, align 8
  %125 = getelementptr inbounds %struct.options, %struct.options* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %123
  %129 = load %struct.options*, %struct.options** %6, align 8
  %130 = getelementptr inbounds %struct.options, %struct.options* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.options*, %struct.options** %6, align 8
  %135 = getelementptr inbounds %struct.options, %struct.options* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.options*, %struct.options** %6, align 8
  %141 = call i32 @sql_exec_dumpalltables(i32* %139, %struct.options* %140)
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @PQfinish(i32* %142)
  %144 = call i32 @exit(i32 0) #3
  unreachable

145:                                              ; preds = %123, %118
  %146 = load %struct.options*, %struct.options** %6, align 8
  %147 = getelementptr inbounds %struct.options, %struct.options* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %145
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.options*, %struct.options** %6, align 8
  %155 = call i32 @sql_exec_dumpalldbs(i32* %153, %struct.options* %154)
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @PQfinish(i32* %156)
  ret i32 0
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @get_opts(i32, i8**, %struct.options*) #1

declare dso_local i32* @sql_conn(%struct.options*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sql_exec_dumpalltbspc(i32*, %struct.options*) #1

declare dso_local i32 @PQfinish(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sql_exec_searchtables(i32*, %struct.options*) #1

declare dso_local i32 @sql_exec_dumpalltables(i32*, %struct.options*) #1

declare dso_local i32 @sql_exec_dumpalldbs(i32*, %struct.options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
