; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_WriteToc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_WriteToc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32*, %struct.TYPE_9__, i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32 }

@REQ_SCHEMA = common dso_local global i32 0, align 4
@REQ_DATA = common dso_local global i32 0, align 4
@REQ_SPECIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteToc(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 16
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %3, align 8
  br label %12

12:                                               ; preds = %33, %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp ne %struct.TYPE_10__* %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @REQ_SCHEMA, align 4
  %23 = load i32, i32* @REQ_DATA, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @REQ_SPECIAL, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %21, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %18
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 16
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %3, align 8
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @WriteInt(%struct.TYPE_11__* %38, i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 16
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %3, align 8
  br label %46

46:                                               ; preds = %185, %37
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = icmp ne %struct.TYPE_10__* %47, %50
  br i1 %51, label %52, label %189

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @REQ_SCHEMA, align 4
  %57 = load i32, i32* @REQ_DATA, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @REQ_SPECIAL, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %55, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %185

64:                                               ; preds = %52
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @WriteInt(%struct.TYPE_11__* %65, i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 15
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = call i32 @WriteInt(%struct.TYPE_11__* %70, i32 %76)
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 14
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %86 = call i32 @WriteStr(%struct.TYPE_11__* %84, i8* %85)
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 14
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %95 = call i32 @WriteStr(%struct.TYPE_11__* %93, i8* %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @WriteStr(%struct.TYPE_11__* %96, i8* %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @WriteStr(%struct.TYPE_11__* %101, i8* %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @WriteInt(%struct.TYPE_11__* %106, i32 %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @WriteStr(%struct.TYPE_11__* %111, i8* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 6
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @WriteStr(%struct.TYPE_11__* %116, i8* %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 7
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @WriteStr(%struct.TYPE_11__* %121, i8* %124)
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 8
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @WriteStr(%struct.TYPE_11__* %126, i8* %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 9
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @WriteStr(%struct.TYPE_11__* %131, i8* %134)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 10
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @WriteStr(%struct.TYPE_11__* %136, i8* %139)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 11
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @WriteStr(%struct.TYPE_11__* %141, i8* %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %147 = call i32 @WriteStr(%struct.TYPE_11__* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %167, %64
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 12
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 13
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @sprintf(i8* %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %165 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %166 = call i32 @WriteStr(%struct.TYPE_11__* %164, i8* %165)
  br label %167

167:                                              ; preds = %154
  %168 = load i32, i32* %6, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %148

170:                                              ; preds = %148
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %172 = call i32 @WriteStr(%struct.TYPE_11__* %171, i8* null)
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)** %174, align 8
  %176 = icmp ne i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* %175, null
  br i1 %176, label %177, label %184

177:                                              ; preds = %170
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)** %179, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %183 = call i32 %180(%struct.TYPE_11__* %181, %struct.TYPE_10__* %182)
  br label %184

184:                                              ; preds = %177, %170
  br label %185

185:                                              ; preds = %184, %63
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 16
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  store %struct.TYPE_10__* %188, %struct.TYPE_10__** %3, align 8
  br label %46

189:                                              ; preds = %46
  ret void
}

declare dso_local i32 @WriteInt(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @WriteStr(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
