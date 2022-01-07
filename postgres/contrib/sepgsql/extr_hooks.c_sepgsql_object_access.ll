; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_hooks.c_sepgsql_object_access.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_hooks.c_sepgsql_object_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@sepgsql_context_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@PERFORM_DELETION_INTERNAL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected object access type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i8*)* @sepgsql_object_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sepgsql_object_access(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  br i1 true, label %17, label %24

17:                                               ; preds = %5
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @next_object_access_hook(i32 %18, i32 %19, i32 %20, i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %17, %5
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %194 [
    i32 130, label %26
    i32 134, label %81
    i32 131, label %115
    i32 132, label %163
    i32 133, label %187
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 0, %35 ]
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %79 [
    i32 136, label %39
    i32 135, label %48
    i32 128, label %56
    i32 129, label %71
  ]

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sepgsql_context_info, i32 0, i32 0), align 4
  %47 = call i32 @sepgsql_database_post_create(i32 %45, i32 %46)
  br label %80

48:                                               ; preds = %36
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @sepgsql_schema_post_create(i32 %54)
  br label %80

56:                                               ; preds = %36
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %80

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @sepgsql_relation_post_create(i32 %64)
  br label %70

66:                                               ; preds = %56
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @sepgsql_attribute_post_create(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  br label %80

71:                                               ; preds = %36
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @Assert(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @sepgsql_proc_post_create(i32 %77)
  br label %80

79:                                               ; preds = %36
  br label %80

80:                                               ; preds = %79, %71, %70, %62, %48, %39
  br label %198

81:                                               ; preds = %24
  %82 = load i8*, i8** %10, align 8
  %83 = bitcast i8* %82 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %13, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PERFORM_DELETION_INTERNAL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %198

91:                                               ; preds = %81
  %92 = load i32, i32* %7, align 4
  switch i32 %92, label %113 [
    i32 136, label %93
    i32 135, label %96
    i32 128, label %99
    i32 129, label %110
  ]

93:                                               ; preds = %91
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @sepgsql_database_drop(i32 %94)
  br label %114

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @sepgsql_schema_drop(i32 %97)
  br label %114

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @sepgsql_relation_drop(i32 %103)
  br label %109

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @sepgsql_attribute_drop(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %102
  br label %114

110:                                              ; preds = %91
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @sepgsql_proc_drop(i32 %111)
  br label %114

113:                                              ; preds = %91
  br label %114

114:                                              ; preds = %113, %110, %109, %96, %93
  br label %198

115:                                              ; preds = %24
  %116 = load i8*, i8** %10, align 8
  %117 = bitcast i8* %116 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %14, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %7, align 4
  switch i32 %121, label %161 [
    i32 136, label %122
    i32 135, label %130
    i32 128, label %138
    i32 129, label %153
  ]

122:                                              ; preds = %115
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @Assert(i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @sepgsql_database_setattr(i32 %128)
  br label %162

130:                                              ; preds = %115
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 @Assert(i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @sepgsql_schema_setattr(i32 %136)
  br label %162

138:                                              ; preds = %115
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %162

145:                                              ; preds = %141
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @sepgsql_relation_setattr(i32 %146)
  br label %152

148:                                              ; preds = %138
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @sepgsql_attribute_setattr(i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %145
  br label %162

153:                                              ; preds = %115
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = call i32 @Assert(i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @sepgsql_proc_setattr(i32 %159)
  br label %162

161:                                              ; preds = %115
  br label %162

162:                                              ; preds = %161, %153, %152, %144, %130, %122
  br label %198

163:                                              ; preds = %24
  %164 = load i8*, i8** %10, align 8
  %165 = bitcast i8* %164 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %165, %struct.TYPE_8__** %16, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %163
  br label %198

171:                                              ; preds = %163
  %172 = load i32, i32* %7, align 4
  %173 = icmp eq i32 %172, 135
  %174 = zext i1 %173 to i32
  %175 = call i32 @Assert(i32 %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @Assert(i32 %178)
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @sepgsql_schema_search(i32 %180, i32 %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  br label %198

187:                                              ; preds = %24
  %188 = load i32, i32* %7, align 4
  %189 = icmp eq i32 %188, 129
  %190 = zext i1 %189 to i32
  %191 = call i32 @Assert(i32 %190)
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @sepgsql_proc_execute(i32 %192)
  br label %198

194:                                              ; preds = %24
  %195 = load i32, i32* @ERROR, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @elog(i32 %195, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %194, %187, %171, %170, %162, %114, %90, %80
  ret void
}

declare dso_local i32 @next_object_access_hook(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @sepgsql_database_post_create(i32, i32) #1

declare dso_local i32 @sepgsql_schema_post_create(i32) #1

declare dso_local i32 @sepgsql_relation_post_create(i32) #1

declare dso_local i32 @sepgsql_attribute_post_create(i32, i32) #1

declare dso_local i32 @sepgsql_proc_post_create(i32) #1

declare dso_local i32 @sepgsql_database_drop(i32) #1

declare dso_local i32 @sepgsql_schema_drop(i32) #1

declare dso_local i32 @sepgsql_relation_drop(i32) #1

declare dso_local i32 @sepgsql_attribute_drop(i32, i32) #1

declare dso_local i32 @sepgsql_proc_drop(i32) #1

declare dso_local i32 @sepgsql_database_setattr(i32) #1

declare dso_local i32 @sepgsql_schema_setattr(i32) #1

declare dso_local i32 @sepgsql_relation_setattr(i32) #1

declare dso_local i32 @sepgsql_attribute_setattr(i32, i32) #1

declare dso_local i32 @sepgsql_proc_setattr(i32) #1

declare dso_local i32 @sepgsql_schema_search(i32, i32) #1

declare dso_local i32 @sepgsql_proc_execute(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
