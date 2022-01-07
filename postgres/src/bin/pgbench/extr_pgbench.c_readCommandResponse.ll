; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_readCommandResponse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_readCommandResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"client %d script %d command %d query %d: expected one row, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gset\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"client %d script %d command %d query %d: error storing into variable %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"client %d script %d aborted in command %d query %d: %s\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"client %d command %d: no results\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @readCommandResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readCommandResponse(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @PQgetResult(i32 %14)
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %145, %2
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %151

19:                                               ; preds = %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @PQgetResult(i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @PQresultStatus(i32* %27)
  switch i32 %28, label %128 [
    i32 130, label %29
    i32 129, label %29
    i32 128, label %49
  ]

29:                                               ; preds = %19, %19
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i32, i32* @stderr, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %45, i32 %46, i32 0)
  br label %168

48:                                               ; preds = %32, %29
  br label %145

49:                                               ; preds = %19
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %127

52:                                               ; preds = %49
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %127

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @PQntuples(i32* %56)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32, i32* @stderr, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @PQntuples(i32* %71)
  %73 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66, i32 %69, i32 %70, i32 %72)
  br label %168

74:                                               ; preds = %55
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %123, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @PQnfields(i32* %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %126

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i8* @PQfname(i32* %81, i32 %82)
  store i8* %83, i8** %11, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = call i8* @psprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %89, i8* %90)
  store i8* %91, i8** %11, align 8
  br label %92

92:                                               ; preds = %88, %80
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @PQgetvalue(i32* %95, i32 0, i32 %96)
  %98 = call i32 @putVariable(%struct.TYPE_4__* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @stderr, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %107, i32 %110, i32 %111, i8* %112)
  br label %168

114:                                              ; preds = %92
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @pg_free(i8* %120)
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %75

126:                                              ; preds = %75
  br label %127

127:                                              ; preds = %126, %52, %49
  br label %145

128:                                              ; preds = %19
  %129 = load i32, i32* @stderr, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @PQerrorMessage(i32 %142)
  %144 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %135, i32 %138, i32 %139, i8* %143)
  br label %168

145:                                              ; preds = %127, %48
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @PQclear(i32* %146)
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  %150 = load i32*, i32** %7, align 8
  store i32* %150, i32** %6, align 8
  br label %16

151:                                              ; preds = %16
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = load i32, i32* @stderr, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  store i32 0, i32* %3, align 4
  br label %188

167:                                              ; preds = %151
  store i32 1, i32* %3, align 4
  br label %188

168:                                              ; preds = %128, %100, %59, %35
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @PQclear(i32* %173)
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @PQclear(i32* %175)
  br label %177

177:                                              ; preds = %184, %168
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32* @PQgetResult(i32 %180)
  store i32* %181, i32** %6, align 8
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @PQclear(i32* %182)
  br label %184

184:                                              ; preds = %177
  %185 = load i32*, i32** %6, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %177, label %187

187:                                              ; preds = %184
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %167, %154
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32* @PQgetResult(i32) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i8* @PQfname(i32*, i32) #1

declare dso_local i8* @psprintf(i8*, i8*, i8*) #1

declare dso_local i32 @putVariable(%struct.TYPE_4__*, i8*, i8*, i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @pg_free(i8*) #1

declare dso_local i8* @PQerrorMessage(i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
